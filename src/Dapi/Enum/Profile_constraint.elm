-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Dapi.Enum.Profile_constraint exposing (Profile_constraint(..), decoder, fromString, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| unique or primary key constraints on table "profile"

  - Profile\_pkey - unique or primary key constraint

-}
type Profile_constraint
    = Profile_pkey


list : List Profile_constraint
list =
    [ Profile_pkey ]


decoder : Decoder Profile_constraint
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "profile_pkey" ->
                        Decode.succeed Profile_pkey

                    _ ->
                        Decode.fail ("Invalid Profile_constraint type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Profile_constraint -> String
toString enum =
    case enum of
        Profile_pkey ->
            "profile_pkey"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Profile_constraint
fromString enumString =
    case enumString of
        "profile_pkey" ->
            Just Profile_pkey

        _ ->
            Nothing
