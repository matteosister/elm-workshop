-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.Swapi.Object.PlanetResidentsConnection exposing (..)

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


{-| Information to aid in pagination.
-}
pageInfo :
    SelectionSet decodesTo Gql.Swapi.Object.PageInfo
    -> SelectionSet decodesTo Gql.Swapi.Object.PlanetResidentsConnection
pageInfo object_ =
    Object.selectionForCompositeField "pageInfo" [] object_ identity


{-| A list of edges.
-}
edges :
    SelectionSet decodesTo Gql.Swapi.Object.PlanetResidentsEdge
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Gql.Swapi.Object.PlanetResidentsConnection
edges object_ =
    Object.selectionForCompositeField "edges" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A count of the total number of objects in this connection, ignoring pagination.
This allows a client to fetch the first five objects by passing "5" as the
argument to "first", then fetch the total count so it could display "5 of 83",
for example.
-}
totalCount : SelectionSet (Maybe Int) Gql.Swapi.Object.PlanetResidentsConnection
totalCount =
    Object.selectionForField "(Maybe Int)" "totalCount" [] (Decode.int |> Decode.nullable)


{-| A list of all of the objects returned in the connection. This is a convenience
field provided for quickly exploring the API; rather than querying for
"{ edges { node } }" when no edge data is needed, this field can be be used
instead. Note that when clients like Relay need to fetch the "cursor" field on
the edge to enable efficient pagination, this shortcut cannot be used, and the
full "{ edges { node } }" version should be used instead.
-}
residents :
    SelectionSet decodesTo Gql.Swapi.Object.Person
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Gql.Swapi.Object.PlanetResidentsConnection
residents object_ =
    Object.selectionForCompositeField "residents" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)
