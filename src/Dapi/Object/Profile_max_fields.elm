-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Dapi.Object.Profile_max_fields exposing (id, name)

import Dapi.InputObject
import Dapi.Interface
import Dapi.Object
import Dapi.Scalar
import Dapi.ScalarCodecs
import Dapi.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


id : SelectionSet (Maybe Int) Dapi.Object.Profile_max_fields
id =
    Object.selectionForField "(Maybe Int)" "id" [] (Decode.int |> Decode.nullable)


name : SelectionSet (Maybe String) Dapi.Object.Profile_max_fields
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)
