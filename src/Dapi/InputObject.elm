-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Dapi.InputObject exposing (Integer_comparison_exp, Integer_comparison_expOptionalFields, Profile_aggregate_order_by, Profile_aggregate_order_byOptionalFields, Profile_arr_rel_insert_input, Profile_arr_rel_insert_inputOptionalFields, Profile_arr_rel_insert_inputRequiredFields, Profile_avg_order_by, Profile_avg_order_byOptionalFields, Profile_bool_exp(..), Profile_bool_expOptionalFields, Profile_bool_expRaw, Profile_inc_input, Profile_inc_inputOptionalFields, Profile_insert_input, Profile_insert_inputOptionalFields, Profile_max_order_by, Profile_max_order_byOptionalFields, Profile_min_order_by, Profile_min_order_byOptionalFields, Profile_obj_rel_insert_input, Profile_obj_rel_insert_inputOptionalFields, Profile_obj_rel_insert_inputRequiredFields, Profile_on_conflict, Profile_on_conflictRequiredFields, Profile_order_by, Profile_order_byOptionalFields, Profile_set_input, Profile_set_inputOptionalFields, Profile_stddev_order_by, Profile_stddev_order_byOptionalFields, Profile_stddev_pop_order_by, Profile_stddev_pop_order_byOptionalFields, Profile_stddev_samp_order_by, Profile_stddev_samp_order_byOptionalFields, Profile_sum_order_by, Profile_sum_order_byOptionalFields, Profile_var_pop_order_by, Profile_var_pop_order_byOptionalFields, Profile_var_samp_order_by, Profile_var_samp_order_byOptionalFields, Profile_variance_order_by, Profile_variance_order_byOptionalFields, Text_comparison_exp, Text_comparison_expOptionalFields, buildInteger_comparison_exp, buildProfile_aggregate_order_by, buildProfile_arr_rel_insert_input, buildProfile_avg_order_by, buildProfile_bool_exp, buildProfile_inc_input, buildProfile_insert_input, buildProfile_max_order_by, buildProfile_min_order_by, buildProfile_obj_rel_insert_input, buildProfile_on_conflict, buildProfile_order_by, buildProfile_set_input, buildProfile_stddev_order_by, buildProfile_stddev_pop_order_by, buildProfile_stddev_samp_order_by, buildProfile_sum_order_by, buildProfile_var_pop_order_by, buildProfile_var_samp_order_by, buildProfile_variance_order_by, buildText_comparison_exp, encodeInteger_comparison_exp, encodeProfile_aggregate_order_by, encodeProfile_arr_rel_insert_input, encodeProfile_avg_order_by, encodeProfile_bool_exp, encodeProfile_inc_input, encodeProfile_insert_input, encodeProfile_max_order_by, encodeProfile_min_order_by, encodeProfile_obj_rel_insert_input, encodeProfile_on_conflict, encodeProfile_order_by, encodeProfile_set_input, encodeProfile_stddev_order_by, encodeProfile_stddev_pop_order_by, encodeProfile_stddev_samp_order_by, encodeProfile_sum_order_by, encodeProfile_var_pop_order_by, encodeProfile_var_samp_order_by, encodeProfile_variance_order_by, encodeText_comparison_exp)

import Dapi.Enum.Order_by
import Dapi.Enum.Profile_constraint
import Dapi.Enum.Profile_update_column
import Dapi.Interface
import Dapi.Object
import Dapi.Scalar
import Dapi.ScalarCodecs
import Dapi.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


buildInteger_comparison_exp : (Integer_comparison_expOptionalFields -> Integer_comparison_expOptionalFields) -> Integer_comparison_exp
buildInteger_comparison_exp fillOptionals =
    let
        optionals =
            fillOptionals
                { eq_ = Absent, gt_ = Absent, gte_ = Absent, in_ = Absent, is_null_ = Absent, lt_ = Absent, lte_ = Absent, neq_ = Absent, nin_ = Absent }
    in
    { eq_ = optionals.eq_, gt_ = optionals.gt_, gte_ = optionals.gte_, in_ = optionals.in_, is_null_ = optionals.is_null_, lt_ = optionals.lt_, lte_ = optionals.lte_, neq_ = optionals.neq_, nin_ = optionals.nin_ }


type alias Integer_comparison_expOptionalFields =
    { eq_ : OptionalArgument Int
    , gt_ : OptionalArgument Int
    , gte_ : OptionalArgument Int
    , in_ : OptionalArgument (List (Maybe Int))
    , is_null_ : OptionalArgument Bool
    , lt_ : OptionalArgument Int
    , lte_ : OptionalArgument Int
    , neq_ : OptionalArgument Int
    , nin_ : OptionalArgument (List (Maybe Int))
    }


{-| Type for the Integer\_comparison\_exp input object.
-}
type alias Integer_comparison_exp =
    { eq_ : OptionalArgument Int
    , gt_ : OptionalArgument Int
    , gte_ : OptionalArgument Int
    , in_ : OptionalArgument (List (Maybe Int))
    , is_null_ : OptionalArgument Bool
    , lt_ : OptionalArgument Int
    , lte_ : OptionalArgument Int
    , neq_ : OptionalArgument Int
    , nin_ : OptionalArgument (List (Maybe Int))
    }


{-| Encode a Integer\_comparison\_exp into a value that can be used as an argument.
-}
encodeInteger_comparison_exp : Integer_comparison_exp -> Value
encodeInteger_comparison_exp input =
    Encode.maybeObject
        [ ( "_eq", Encode.int |> Encode.optional input.eq_ ), ( "_gt", Encode.int |> Encode.optional input.gt_ ), ( "_gte", Encode.int |> Encode.optional input.gte_ ), ( "_in", (Encode.int |> Encode.maybe |> Encode.list) |> Encode.optional input.in_ ), ( "_is_null", Encode.bool |> Encode.optional input.is_null_ ), ( "_lt", Encode.int |> Encode.optional input.lt_ ), ( "_lte", Encode.int |> Encode.optional input.lte_ ), ( "_neq", Encode.int |> Encode.optional input.neq_ ), ( "_nin", (Encode.int |> Encode.maybe |> Encode.list) |> Encode.optional input.nin_ ) ]


buildProfile_aggregate_order_by : (Profile_aggregate_order_byOptionalFields -> Profile_aggregate_order_byOptionalFields) -> Profile_aggregate_order_by
buildProfile_aggregate_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { avg = Absent, count = Absent, max = Absent, min = Absent, stddev = Absent, stddev_pop = Absent, stddev_samp = Absent, sum = Absent, var_pop = Absent, var_samp = Absent, variance = Absent }
    in
    { avg = optionals.avg, count = optionals.count, max = optionals.max, min = optionals.min, stddev = optionals.stddev, stddev_pop = optionals.stddev_pop, stddev_samp = optionals.stddev_samp, sum = optionals.sum, var_pop = optionals.var_pop, var_samp = optionals.var_samp, variance = optionals.variance }


type alias Profile_aggregate_order_byOptionalFields =
    { avg : OptionalArgument Profile_avg_order_by
    , count : OptionalArgument Dapi.Enum.Order_by.Order_by
    , max : OptionalArgument Profile_max_order_by
    , min : OptionalArgument Profile_min_order_by
    , stddev : OptionalArgument Profile_stddev_order_by
    , stddev_pop : OptionalArgument Profile_stddev_pop_order_by
    , stddev_samp : OptionalArgument Profile_stddev_samp_order_by
    , sum : OptionalArgument Profile_sum_order_by
    , var_pop : OptionalArgument Profile_var_pop_order_by
    , var_samp : OptionalArgument Profile_var_samp_order_by
    , variance : OptionalArgument Profile_variance_order_by
    }


{-| Type for the Profile\_aggregate\_order\_by input object.
-}
type alias Profile_aggregate_order_by =
    { avg : OptionalArgument Profile_avg_order_by
    , count : OptionalArgument Dapi.Enum.Order_by.Order_by
    , max : OptionalArgument Profile_max_order_by
    , min : OptionalArgument Profile_min_order_by
    , stddev : OptionalArgument Profile_stddev_order_by
    , stddev_pop : OptionalArgument Profile_stddev_pop_order_by
    , stddev_samp : OptionalArgument Profile_stddev_samp_order_by
    , sum : OptionalArgument Profile_sum_order_by
    , var_pop : OptionalArgument Profile_var_pop_order_by
    , var_samp : OptionalArgument Profile_var_samp_order_by
    , variance : OptionalArgument Profile_variance_order_by
    }


{-| Encode a Profile\_aggregate\_order\_by into a value that can be used as an argument.
-}
encodeProfile_aggregate_order_by : Profile_aggregate_order_by -> Value
encodeProfile_aggregate_order_by input =
    Encode.maybeObject
        [ ( "avg", encodeProfile_avg_order_by |> Encode.optional input.avg ), ( "count", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.count ), ( "max", encodeProfile_max_order_by |> Encode.optional input.max ), ( "min", encodeProfile_min_order_by |> Encode.optional input.min ), ( "stddev", encodeProfile_stddev_order_by |> Encode.optional input.stddev ), ( "stddev_pop", encodeProfile_stddev_pop_order_by |> Encode.optional input.stddev_pop ), ( "stddev_samp", encodeProfile_stddev_samp_order_by |> Encode.optional input.stddev_samp ), ( "sum", encodeProfile_sum_order_by |> Encode.optional input.sum ), ( "var_pop", encodeProfile_var_pop_order_by |> Encode.optional input.var_pop ), ( "var_samp", encodeProfile_var_samp_order_by |> Encode.optional input.var_samp ), ( "variance", encodeProfile_variance_order_by |> Encode.optional input.variance ) ]


buildProfile_arr_rel_insert_input : Profile_arr_rel_insert_inputRequiredFields -> (Profile_arr_rel_insert_inputOptionalFields -> Profile_arr_rel_insert_inputOptionalFields) -> Profile_arr_rel_insert_input
buildProfile_arr_rel_insert_input required fillOptionals =
    let
        optionals =
            fillOptionals
                { on_conflict = Absent }
    in
    { data = required.data, on_conflict = optionals.on_conflict }


type alias Profile_arr_rel_insert_inputRequiredFields =
    { data : List Profile_insert_input }


type alias Profile_arr_rel_insert_inputOptionalFields =
    { on_conflict : OptionalArgument Profile_on_conflict }


{-| Type for the Profile\_arr\_rel\_insert\_input input object.
-}
type alias Profile_arr_rel_insert_input =
    { data : List Profile_insert_input
    , on_conflict : OptionalArgument Profile_on_conflict
    }


{-| Encode a Profile\_arr\_rel\_insert\_input into a value that can be used as an argument.
-}
encodeProfile_arr_rel_insert_input : Profile_arr_rel_insert_input -> Value
encodeProfile_arr_rel_insert_input input =
    Encode.maybeObject
        [ ( "data", (encodeProfile_insert_input |> Encode.list) input.data |> Just ), ( "on_conflict", encodeProfile_on_conflict |> Encode.optional input.on_conflict ) ]


buildProfile_avg_order_by : (Profile_avg_order_byOptionalFields -> Profile_avg_order_byOptionalFields) -> Profile_avg_order_by
buildProfile_avg_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_avg_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Type for the Profile\_avg\_order\_by input object.
-}
type alias Profile_avg_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Encode a Profile\_avg\_order\_by into a value that can be used as an argument.
-}
encodeProfile_avg_order_by : Profile_avg_order_by -> Value
encodeProfile_avg_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ) ]


buildProfile_bool_exp : (Profile_bool_expOptionalFields -> Profile_bool_expOptionalFields) -> Profile_bool_exp
buildProfile_bool_exp fillOptionals =
    let
        optionals =
            fillOptionals
                { and_ = Absent, not_ = Absent, or_ = Absent, id = Absent, name = Absent }
    in
    Profile_bool_exp { and_ = optionals.and_, not_ = optionals.not_, or_ = optionals.or_, id = optionals.id, name = optionals.name }


type alias Profile_bool_expOptionalFields =
    { and_ : OptionalArgument (List (Maybe Profile_bool_exp))
    , not_ : OptionalArgument Profile_bool_exp
    , or_ : OptionalArgument (List (Maybe Profile_bool_exp))
    , id : OptionalArgument Integer_comparison_exp
    , name : OptionalArgument Text_comparison_exp
    }


{-| Type alias for the `Profile_bool_exp` attributes. Note that this type
needs to use the `Profile_bool_exp` type (not just a plain type alias) because it has
references to itself either directly (recursive) or indirectly (circular). See
<https://github.com/dillonkearns/elm-graphql/issues/33>.
-}
type alias Profile_bool_expRaw =
    { and_ : OptionalArgument (List (Maybe Profile_bool_exp))
    , not_ : OptionalArgument Profile_bool_exp
    , or_ : OptionalArgument (List (Maybe Profile_bool_exp))
    , id : OptionalArgument Integer_comparison_exp
    , name : OptionalArgument Text_comparison_exp
    }


{-| Type for the Profile\_bool\_exp input object.
-}
type Profile_bool_exp
    = Profile_bool_exp Profile_bool_expRaw


{-| Encode a Profile\_bool\_exp into a value that can be used as an argument.
-}
encodeProfile_bool_exp : Profile_bool_exp -> Value
encodeProfile_bool_exp (Profile_bool_exp input) =
    Encode.maybeObject
        [ ( "_and", (encodeProfile_bool_exp |> Encode.maybe |> Encode.list) |> Encode.optional input.and_ ), ( "_not", encodeProfile_bool_exp |> Encode.optional input.not_ ), ( "_or", (encodeProfile_bool_exp |> Encode.maybe |> Encode.list) |> Encode.optional input.or_ ), ( "id", encodeInteger_comparison_exp |> Encode.optional input.id ), ( "name", encodeText_comparison_exp |> Encode.optional input.name ) ]


buildProfile_inc_input : (Profile_inc_inputOptionalFields -> Profile_inc_inputOptionalFields) -> Profile_inc_input
buildProfile_inc_input fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_inc_inputOptionalFields =
    { id : OptionalArgument Int }


{-| Type for the Profile\_inc\_input input object.
-}
type alias Profile_inc_input =
    { id : OptionalArgument Int }


{-| Encode a Profile\_inc\_input into a value that can be used as an argument.
-}
encodeProfile_inc_input : Profile_inc_input -> Value
encodeProfile_inc_input input =
    Encode.maybeObject
        [ ( "id", Encode.int |> Encode.optional input.id ) ]


buildProfile_insert_input : (Profile_insert_inputOptionalFields -> Profile_insert_inputOptionalFields) -> Profile_insert_input
buildProfile_insert_input fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent, name = Absent }
    in
    { id = optionals.id, name = optionals.name }


type alias Profile_insert_inputOptionalFields =
    { id : OptionalArgument Int
    , name : OptionalArgument String
    }


{-| Type for the Profile\_insert\_input input object.
-}
type alias Profile_insert_input =
    { id : OptionalArgument Int
    , name : OptionalArgument String
    }


{-| Encode a Profile\_insert\_input into a value that can be used as an argument.
-}
encodeProfile_insert_input : Profile_insert_input -> Value
encodeProfile_insert_input input =
    Encode.maybeObject
        [ ( "id", Encode.int |> Encode.optional input.id ), ( "name", Encode.string |> Encode.optional input.name ) ]


buildProfile_max_order_by : (Profile_max_order_byOptionalFields -> Profile_max_order_byOptionalFields) -> Profile_max_order_by
buildProfile_max_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent, name = Absent }
    in
    { id = optionals.id, name = optionals.name }


type alias Profile_max_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by
    , name : OptionalArgument Dapi.Enum.Order_by.Order_by
    }


{-| Type for the Profile\_max\_order\_by input object.
-}
type alias Profile_max_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by
    , name : OptionalArgument Dapi.Enum.Order_by.Order_by
    }


{-| Encode a Profile\_max\_order\_by into a value that can be used as an argument.
-}
encodeProfile_max_order_by : Profile_max_order_by -> Value
encodeProfile_max_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ), ( "name", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.name ) ]


buildProfile_min_order_by : (Profile_min_order_byOptionalFields -> Profile_min_order_byOptionalFields) -> Profile_min_order_by
buildProfile_min_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent, name = Absent }
    in
    { id = optionals.id, name = optionals.name }


type alias Profile_min_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by
    , name : OptionalArgument Dapi.Enum.Order_by.Order_by
    }


{-| Type for the Profile\_min\_order\_by input object.
-}
type alias Profile_min_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by
    , name : OptionalArgument Dapi.Enum.Order_by.Order_by
    }


{-| Encode a Profile\_min\_order\_by into a value that can be used as an argument.
-}
encodeProfile_min_order_by : Profile_min_order_by -> Value
encodeProfile_min_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ), ( "name", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.name ) ]


buildProfile_obj_rel_insert_input : Profile_obj_rel_insert_inputRequiredFields -> (Profile_obj_rel_insert_inputOptionalFields -> Profile_obj_rel_insert_inputOptionalFields) -> Profile_obj_rel_insert_input
buildProfile_obj_rel_insert_input required fillOptionals =
    let
        optionals =
            fillOptionals
                { on_conflict = Absent }
    in
    { data = required.data, on_conflict = optionals.on_conflict }


type alias Profile_obj_rel_insert_inputRequiredFields =
    { data : Profile_insert_input }


type alias Profile_obj_rel_insert_inputOptionalFields =
    { on_conflict : OptionalArgument Profile_on_conflict }


{-| Type for the Profile\_obj\_rel\_insert\_input input object.
-}
type alias Profile_obj_rel_insert_input =
    { data : Profile_insert_input
    , on_conflict : OptionalArgument Profile_on_conflict
    }


{-| Encode a Profile\_obj\_rel\_insert\_input into a value that can be used as an argument.
-}
encodeProfile_obj_rel_insert_input : Profile_obj_rel_insert_input -> Value
encodeProfile_obj_rel_insert_input input =
    Encode.maybeObject
        [ ( "data", encodeProfile_insert_input input.data |> Just ), ( "on_conflict", encodeProfile_on_conflict |> Encode.optional input.on_conflict ) ]


buildProfile_on_conflict : Profile_on_conflictRequiredFields -> Profile_on_conflict
buildProfile_on_conflict required =
    { constraint = required.constraint, update_columns = required.update_columns }


type alias Profile_on_conflictRequiredFields =
    { constraint : Dapi.Enum.Profile_constraint.Profile_constraint
    , update_columns : List Dapi.Enum.Profile_update_column.Profile_update_column
    }


{-| Type for the Profile\_on\_conflict input object.
-}
type alias Profile_on_conflict =
    { constraint : Dapi.Enum.Profile_constraint.Profile_constraint
    , update_columns : List Dapi.Enum.Profile_update_column.Profile_update_column
    }


{-| Encode a Profile\_on\_conflict into a value that can be used as an argument.
-}
encodeProfile_on_conflict : Profile_on_conflict -> Value
encodeProfile_on_conflict input =
    Encode.maybeObject
        [ ( "constraint", Encode.enum Dapi.Enum.Profile_constraint.toString input.constraint |> Just ), ( "update_columns", (Encode.enum Dapi.Enum.Profile_update_column.toString |> Encode.list) input.update_columns |> Just ) ]


buildProfile_order_by : (Profile_order_byOptionalFields -> Profile_order_byOptionalFields) -> Profile_order_by
buildProfile_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent, name = Absent }
    in
    { id = optionals.id, name = optionals.name }


type alias Profile_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by
    , name : OptionalArgument Dapi.Enum.Order_by.Order_by
    }


{-| Type for the Profile\_order\_by input object.
-}
type alias Profile_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by
    , name : OptionalArgument Dapi.Enum.Order_by.Order_by
    }


{-| Encode a Profile\_order\_by into a value that can be used as an argument.
-}
encodeProfile_order_by : Profile_order_by -> Value
encodeProfile_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ), ( "name", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.name ) ]


buildProfile_set_input : (Profile_set_inputOptionalFields -> Profile_set_inputOptionalFields) -> Profile_set_input
buildProfile_set_input fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent, name = Absent }
    in
    { id = optionals.id, name = optionals.name }


type alias Profile_set_inputOptionalFields =
    { id : OptionalArgument Int
    , name : OptionalArgument String
    }


{-| Type for the Profile\_set\_input input object.
-}
type alias Profile_set_input =
    { id : OptionalArgument Int
    , name : OptionalArgument String
    }


{-| Encode a Profile\_set\_input into a value that can be used as an argument.
-}
encodeProfile_set_input : Profile_set_input -> Value
encodeProfile_set_input input =
    Encode.maybeObject
        [ ( "id", Encode.int |> Encode.optional input.id ), ( "name", Encode.string |> Encode.optional input.name ) ]


buildProfile_stddev_order_by : (Profile_stddev_order_byOptionalFields -> Profile_stddev_order_byOptionalFields) -> Profile_stddev_order_by
buildProfile_stddev_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_stddev_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Type for the Profile\_stddev\_order\_by input object.
-}
type alias Profile_stddev_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Encode a Profile\_stddev\_order\_by into a value that can be used as an argument.
-}
encodeProfile_stddev_order_by : Profile_stddev_order_by -> Value
encodeProfile_stddev_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ) ]


buildProfile_stddev_pop_order_by : (Profile_stddev_pop_order_byOptionalFields -> Profile_stddev_pop_order_byOptionalFields) -> Profile_stddev_pop_order_by
buildProfile_stddev_pop_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_stddev_pop_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Type for the Profile\_stddev\_pop\_order\_by input object.
-}
type alias Profile_stddev_pop_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Encode a Profile\_stddev\_pop\_order\_by into a value that can be used as an argument.
-}
encodeProfile_stddev_pop_order_by : Profile_stddev_pop_order_by -> Value
encodeProfile_stddev_pop_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ) ]


buildProfile_stddev_samp_order_by : (Profile_stddev_samp_order_byOptionalFields -> Profile_stddev_samp_order_byOptionalFields) -> Profile_stddev_samp_order_by
buildProfile_stddev_samp_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_stddev_samp_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Type for the Profile\_stddev\_samp\_order\_by input object.
-}
type alias Profile_stddev_samp_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Encode a Profile\_stddev\_samp\_order\_by into a value that can be used as an argument.
-}
encodeProfile_stddev_samp_order_by : Profile_stddev_samp_order_by -> Value
encodeProfile_stddev_samp_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ) ]


buildProfile_sum_order_by : (Profile_sum_order_byOptionalFields -> Profile_sum_order_byOptionalFields) -> Profile_sum_order_by
buildProfile_sum_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_sum_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Type for the Profile\_sum\_order\_by input object.
-}
type alias Profile_sum_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Encode a Profile\_sum\_order\_by into a value that can be used as an argument.
-}
encodeProfile_sum_order_by : Profile_sum_order_by -> Value
encodeProfile_sum_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ) ]


buildProfile_var_pop_order_by : (Profile_var_pop_order_byOptionalFields -> Profile_var_pop_order_byOptionalFields) -> Profile_var_pop_order_by
buildProfile_var_pop_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_var_pop_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Type for the Profile\_var\_pop\_order\_by input object.
-}
type alias Profile_var_pop_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Encode a Profile\_var\_pop\_order\_by into a value that can be used as an argument.
-}
encodeProfile_var_pop_order_by : Profile_var_pop_order_by -> Value
encodeProfile_var_pop_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ) ]


buildProfile_var_samp_order_by : (Profile_var_samp_order_byOptionalFields -> Profile_var_samp_order_byOptionalFields) -> Profile_var_samp_order_by
buildProfile_var_samp_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_var_samp_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Type for the Profile\_var\_samp\_order\_by input object.
-}
type alias Profile_var_samp_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Encode a Profile\_var\_samp\_order\_by into a value that can be used as an argument.
-}
encodeProfile_var_samp_order_by : Profile_var_samp_order_by -> Value
encodeProfile_var_samp_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ) ]


buildProfile_variance_order_by : (Profile_variance_order_byOptionalFields -> Profile_variance_order_byOptionalFields) -> Profile_variance_order_by
buildProfile_variance_order_by fillOptionals =
    let
        optionals =
            fillOptionals
                { id = Absent }
    in
    { id = optionals.id }


type alias Profile_variance_order_byOptionalFields =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Type for the Profile\_variance\_order\_by input object.
-}
type alias Profile_variance_order_by =
    { id : OptionalArgument Dapi.Enum.Order_by.Order_by }


{-| Encode a Profile\_variance\_order\_by into a value that can be used as an argument.
-}
encodeProfile_variance_order_by : Profile_variance_order_by -> Value
encodeProfile_variance_order_by input =
    Encode.maybeObject
        [ ( "id", Encode.enum Dapi.Enum.Order_by.toString |> Encode.optional input.id ) ]


buildText_comparison_exp : (Text_comparison_expOptionalFields -> Text_comparison_expOptionalFields) -> Text_comparison_exp
buildText_comparison_exp fillOptionals =
    let
        optionals =
            fillOptionals
                { eq_ = Absent, gt_ = Absent, gte_ = Absent, ilike_ = Absent, in_ = Absent, is_null_ = Absent, like_ = Absent, lt_ = Absent, lte_ = Absent, neq_ = Absent, nilike_ = Absent, nin_ = Absent, nlike_ = Absent, nsimilar_ = Absent, similar_ = Absent }
    in
    { eq_ = optionals.eq_, gt_ = optionals.gt_, gte_ = optionals.gte_, ilike_ = optionals.ilike_, in_ = optionals.in_, is_null_ = optionals.is_null_, like_ = optionals.like_, lt_ = optionals.lt_, lte_ = optionals.lte_, neq_ = optionals.neq_, nilike_ = optionals.nilike_, nin_ = optionals.nin_, nlike_ = optionals.nlike_, nsimilar_ = optionals.nsimilar_, similar_ = optionals.similar_ }


type alias Text_comparison_expOptionalFields =
    { eq_ : OptionalArgument String
    , gt_ : OptionalArgument String
    , gte_ : OptionalArgument String
    , ilike_ : OptionalArgument String
    , in_ : OptionalArgument (List (Maybe String))
    , is_null_ : OptionalArgument Bool
    , like_ : OptionalArgument String
    , lt_ : OptionalArgument String
    , lte_ : OptionalArgument String
    , neq_ : OptionalArgument String
    , nilike_ : OptionalArgument String
    , nin_ : OptionalArgument (List (Maybe String))
    , nlike_ : OptionalArgument String
    , nsimilar_ : OptionalArgument String
    , similar_ : OptionalArgument String
    }


{-| Type for the Text\_comparison\_exp input object.
-}
type alias Text_comparison_exp =
    { eq_ : OptionalArgument String
    , gt_ : OptionalArgument String
    , gte_ : OptionalArgument String
    , ilike_ : OptionalArgument String
    , in_ : OptionalArgument (List (Maybe String))
    , is_null_ : OptionalArgument Bool
    , like_ : OptionalArgument String
    , lt_ : OptionalArgument String
    , lte_ : OptionalArgument String
    , neq_ : OptionalArgument String
    , nilike_ : OptionalArgument String
    , nin_ : OptionalArgument (List (Maybe String))
    , nlike_ : OptionalArgument String
    , nsimilar_ : OptionalArgument String
    , similar_ : OptionalArgument String
    }


{-| Encode a Text\_comparison\_exp into a value that can be used as an argument.
-}
encodeText_comparison_exp : Text_comparison_exp -> Value
encodeText_comparison_exp input =
    Encode.maybeObject
        [ ( "_eq", Encode.string |> Encode.optional input.eq_ ), ( "_gt", Encode.string |> Encode.optional input.gt_ ), ( "_gte", Encode.string |> Encode.optional input.gte_ ), ( "_ilike", Encode.string |> Encode.optional input.ilike_ ), ( "_in", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.in_ ), ( "_is_null", Encode.bool |> Encode.optional input.is_null_ ), ( "_like", Encode.string |> Encode.optional input.like_ ), ( "_lt", Encode.string |> Encode.optional input.lt_ ), ( "_lte", Encode.string |> Encode.optional input.lte_ ), ( "_neq", Encode.string |> Encode.optional input.neq_ ), ( "_nilike", Encode.string |> Encode.optional input.nilike_ ), ( "_nin", (Encode.string |> Encode.maybe |> Encode.list) |> Encode.optional input.nin_ ), ( "_nlike", Encode.string |> Encode.optional input.nlike_ ), ( "_nsimilar", Encode.string |> Encode.optional input.nsimilar_ ), ( "_similar", Encode.string |> Encode.optional input.similar_ ) ]
