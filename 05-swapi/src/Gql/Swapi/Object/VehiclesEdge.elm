-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.Swapi.Object.VehiclesEdge exposing (..)

import Gql.Swapi.InputObject
import Gql.Swapi.Interface
import Gql.Swapi.Object
import Gql.Swapi.Scalar
import Gql.Swapi.ScalarCodecs
import Gql.Swapi.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The item at the end of the edge
-}
node :
    SelectionSet decodesTo Gql.Swapi.Object.Vehicle
    -> SelectionSet (Maybe decodesTo) Gql.Swapi.Object.VehiclesEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ (identity >> Decode.nullable)


{-| A cursor for use in pagination
-}
cursor : SelectionSet String Gql.Swapi.Object.VehiclesEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string
