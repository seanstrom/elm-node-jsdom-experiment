-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Dapi.Object.Profile_aggregate_fields exposing (CountOptionalArguments, avg, count, max, min, stddev, stddev_pop, stddev_samp, sum, var_pop, var_samp, variance)

import Dapi.Enum.Profile_select_column
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


avg : SelectionSet decodesTo Dapi.Object.Profile_avg_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
avg object_ =
    Object.selectionForCompositeField "avg" [] object_ (identity >> Decode.nullable)


type alias CountOptionalArguments =
    { columns : OptionalArgument (List Dapi.Enum.Profile_select_column.Profile_select_column)
    , distinct : OptionalArgument Bool
    }


count : (CountOptionalArguments -> CountOptionalArguments) -> SelectionSet (Maybe Int) Dapi.Object.Profile_aggregate_fields
count fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { columns = Absent, distinct = Absent }

        optionalArgs =
            [ Argument.optional "columns" filledInOptionals.columns (Encode.enum Dapi.Enum.Profile_select_column.toString |> Encode.list), Argument.optional "distinct" filledInOptionals.distinct Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForField "(Maybe Int)" "count" optionalArgs (Decode.int |> Decode.nullable)


max : SelectionSet decodesTo Dapi.Object.Profile_max_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
max object_ =
    Object.selectionForCompositeField "max" [] object_ (identity >> Decode.nullable)


min : SelectionSet decodesTo Dapi.Object.Profile_min_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
min object_ =
    Object.selectionForCompositeField "min" [] object_ (identity >> Decode.nullable)


stddev : SelectionSet decodesTo Dapi.Object.Profile_stddev_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
stddev object_ =
    Object.selectionForCompositeField "stddev" [] object_ (identity >> Decode.nullable)


stddev_pop : SelectionSet decodesTo Dapi.Object.Profile_stddev_pop_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
stddev_pop object_ =
    Object.selectionForCompositeField "stddev_pop" [] object_ (identity >> Decode.nullable)


stddev_samp : SelectionSet decodesTo Dapi.Object.Profile_stddev_samp_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
stddev_samp object_ =
    Object.selectionForCompositeField "stddev_samp" [] object_ (identity >> Decode.nullable)


sum : SelectionSet decodesTo Dapi.Object.Profile_sum_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
sum object_ =
    Object.selectionForCompositeField "sum" [] object_ (identity >> Decode.nullable)


var_pop : SelectionSet decodesTo Dapi.Object.Profile_var_pop_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
var_pop object_ =
    Object.selectionForCompositeField "var_pop" [] object_ (identity >> Decode.nullable)


var_samp : SelectionSet decodesTo Dapi.Object.Profile_var_samp_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
var_samp object_ =
    Object.selectionForCompositeField "var_samp" [] object_ (identity >> Decode.nullable)


variance : SelectionSet decodesTo Dapi.Object.Profile_variance_fields -> SelectionSet (Maybe decodesTo) Dapi.Object.Profile_aggregate_fields
variance object_ =
    Object.selectionForCompositeField "variance" [] object_ (identity >> Decode.nullable)
