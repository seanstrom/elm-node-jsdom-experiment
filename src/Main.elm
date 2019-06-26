port module Main exposing (main)

import Url
import Url.Parser exposing (Parser, parse, int, map, oneOf, s, top, (</>))

import Html
import Result
import Browser
import RemoteData exposing (RemoteData(..))
import Json.Decode as Decode
import Json.Encode as Encode exposing (encode)

import Graphql.Http
import Graphql.Document as Document
import Graphql.Operation exposing (RootQuery)
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet, with)

import Dapi.Object
import Dapi.Object.Profile as Profile
import Dapi.Query as Query
import Dapi.Scalar exposing(Id(..))


-- Types

type alias Profile =
  { id: Int
  , name: String
  }

type alias Response =
  Maybe Profile


-- Ports

type alias Payload =
  String

port inbound : (Decode.Value -> msg) -> Sub msg
port outbound : Payload -> Cmd msg


-- Query

profileSelection : SelectionSet Profile Dapi.Object.Profile
profileSelection =
  SelectionSet.map2 Profile
    Profile.id
    Profile.name

query : Int -> SelectionSet Response RootQuery
query id =
  Query.profile_by_pk { id = id } profileSelection

makeRequest : Int -> Cmd Msg
makeRequest id =
  query id
    |> Graphql.Http.queryRequest "http://localhost:8080/v1/graphql"
    |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)


-- Encoders / Decoders

decodeMessage message =
  let
    messageDecoder =
      Decode.map InboundMessage (Decode.field "url" Decode.string)
    decodedMessage =
      Decode.decodeValue messageDecoder message
  in
    Result.withDefault (InboundMessage "") decodedMessage

encodeMessage message =
  let
    encoder = Encode.object
      [ ("body", Encode.string message.body) ]
  in
    encode 0 encoder 
  

-- Router

type Route
  = ProfilePath Int
  | Unknown

route : Parser (Route -> a) a
route =
  oneOf
    [ map Unknown top,
      map ProfilePath (s "profile" </> int)
    ]

toRoute : String -> Route
toRoute string =
  case Url.fromString string of
    Nothing ->
      Unknown
    Just url ->
      Maybe.withDefault Unknown (parse route url)


-- Main

type alias InboundMessage =
  { url: String }

type Msg
  = Inbound InboundMessage
  | GotResponse Model

type alias Model
  = RemoteData (Graphql.Http.Error Response) Response

unknownMessage =
  { body = "Unknown Route" }

missingProfile =
  { body = "Profile Not Found" }

toHelloPayload payload =
  case payload of
    Nothing ->
      encodeMessage missingProfile
    Just profile ->
      { body = profile.name } |> encodeMessage

init : () -> (Model, Cmd Msg)
init _ = (RemoteData.NotAsked, Cmd.none)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Inbound message ->
      case toRoute message.url of
        ProfilePath id ->
          (RemoteData.Loading, makeRequest id)
        Unknown ->
          (RemoteData.NotAsked, outbound (encodeMessage unknownMessage))
    GotResponse response ->
      case response of
        Success payload ->
          (RemoteData.NotAsked, outbound (toHelloPayload payload))
        _ ->
          (RemoteData.NotAsked, outbound (toHelloPayload Nothing))

subscriptions _ =
  inbound (decodeMessage >> Inbound)

view model = Html.text ""

main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }
