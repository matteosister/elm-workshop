-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gql.Swapi.Query exposing (..)

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
import Json.Decode as Decode exposing (Decoder)


type alias AllFilmsOptionalArguments =
    { after : OptionalArgument String
    , first : OptionalArgument Int
    , before : OptionalArgument String
    , last : OptionalArgument Int
    }


allFilms :
    (AllFilmsOptionalArguments -> AllFilmsOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.FilmsConnection
    -> SelectionSet (Maybe decodesTo) RootQuery
allFilms fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, first = Absent, before = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "allFilms" optionalArgs object_ (identity >> Decode.nullable)


type alias FilmOptionalArguments =
    { id : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    , filmID : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    }


film :
    (FilmOptionalArguments -> FilmOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.Film
    -> SelectionSet (Maybe decodesTo) RootQuery
film fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { id = Absent, filmID = Absent }

        optionalArgs =
            [ Argument.optional "id" filledInOptionals.id (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId), Argument.optional "filmID" filledInOptionals.filmID (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "film" optionalArgs object_ (identity >> Decode.nullable)


type alias AllPeopleOptionalArguments =
    { after : OptionalArgument String
    , first : OptionalArgument Int
    , before : OptionalArgument String
    , last : OptionalArgument Int
    }


allPeople :
    (AllPeopleOptionalArguments -> AllPeopleOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.PeopleConnection
    -> SelectionSet (Maybe decodesTo) RootQuery
allPeople fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, first = Absent, before = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "allPeople" optionalArgs object_ (identity >> Decode.nullable)


type alias PersonOptionalArguments =
    { id : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    , personID : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    }


person :
    (PersonOptionalArguments -> PersonOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.Person
    -> SelectionSet (Maybe decodesTo) RootQuery
person fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { id = Absent, personID = Absent }

        optionalArgs =
            [ Argument.optional "id" filledInOptionals.id (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId), Argument.optional "personID" filledInOptionals.personID (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "person" optionalArgs object_ (identity >> Decode.nullable)


type alias AllPlanetsOptionalArguments =
    { after : OptionalArgument String
    , first : OptionalArgument Int
    , before : OptionalArgument String
    , last : OptionalArgument Int
    }


allPlanets :
    (AllPlanetsOptionalArguments -> AllPlanetsOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.PlanetsConnection
    -> SelectionSet (Maybe decodesTo) RootQuery
allPlanets fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, first = Absent, before = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "allPlanets" optionalArgs object_ (identity >> Decode.nullable)


type alias PlanetOptionalArguments =
    { id : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    , planetID : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    }


planet :
    (PlanetOptionalArguments -> PlanetOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.Planet
    -> SelectionSet (Maybe decodesTo) RootQuery
planet fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { id = Absent, planetID = Absent }

        optionalArgs =
            [ Argument.optional "id" filledInOptionals.id (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId), Argument.optional "planetID" filledInOptionals.planetID (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "planet" optionalArgs object_ (identity >> Decode.nullable)


type alias AllSpeciesOptionalArguments =
    { after : OptionalArgument String
    , first : OptionalArgument Int
    , before : OptionalArgument String
    , last : OptionalArgument Int
    }


allSpecies :
    (AllSpeciesOptionalArguments -> AllSpeciesOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.SpeciesConnection
    -> SelectionSet (Maybe decodesTo) RootQuery
allSpecies fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, first = Absent, before = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "allSpecies" optionalArgs object_ (identity >> Decode.nullable)


type alias SpeciesOptionalArguments =
    { id : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    , speciesID : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    }


species :
    (SpeciesOptionalArguments -> SpeciesOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.Species
    -> SelectionSet (Maybe decodesTo) RootQuery
species fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { id = Absent, speciesID = Absent }

        optionalArgs =
            [ Argument.optional "id" filledInOptionals.id (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId), Argument.optional "speciesID" filledInOptionals.speciesID (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "species" optionalArgs object_ (identity >> Decode.nullable)


type alias AllStarshipsOptionalArguments =
    { after : OptionalArgument String
    , first : OptionalArgument Int
    , before : OptionalArgument String
    , last : OptionalArgument Int
    }


allStarships :
    (AllStarshipsOptionalArguments -> AllStarshipsOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.StarshipsConnection
    -> SelectionSet (Maybe decodesTo) RootQuery
allStarships fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, first = Absent, before = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "allStarships" optionalArgs object_ (identity >> Decode.nullable)


type alias StarshipOptionalArguments =
    { id : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    , starshipID : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    }


starship :
    (StarshipOptionalArguments -> StarshipOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.Starship
    -> SelectionSet (Maybe decodesTo) RootQuery
starship fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { id = Absent, starshipID = Absent }

        optionalArgs =
            [ Argument.optional "id" filledInOptionals.id (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId), Argument.optional "starshipID" filledInOptionals.starshipID (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "starship" optionalArgs object_ (identity >> Decode.nullable)


type alias AllVehiclesOptionalArguments =
    { after : OptionalArgument String
    , first : OptionalArgument Int
    , before : OptionalArgument String
    , last : OptionalArgument Int
    }


allVehicles :
    (AllVehiclesOptionalArguments -> AllVehiclesOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.VehiclesConnection
    -> SelectionSet (Maybe decodesTo) RootQuery
allVehicles fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, first = Absent, before = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "allVehicles" optionalArgs object_ (identity >> Decode.nullable)


type alias VehicleOptionalArguments =
    { id : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    , vehicleID : OptionalArgument Gql.Swapi.ScalarCodecs.Id
    }


vehicle :
    (VehicleOptionalArguments -> VehicleOptionalArguments)
    -> SelectionSet decodesTo Gql.Swapi.Object.Vehicle
    -> SelectionSet (Maybe decodesTo) RootQuery
vehicle fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { id = Absent, vehicleID = Absent }

        optionalArgs =
            [ Argument.optional "id" filledInOptionals.id (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId), Argument.optional "vehicleID" filledInOptionals.vehicleID (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "vehicle" optionalArgs object_ (identity >> Decode.nullable)


type alias NodeRequiredArguments =
    { id : Gql.Swapi.ScalarCodecs.Id }


{-| Fetches an object given its ID

  - id - The ID of an object

-}
node :
    NodeRequiredArguments
    -> SelectionSet decodesTo Gql.Swapi.Interface.Node
    -> SelectionSet (Maybe decodesTo) RootQuery
node requiredArgs object_ =
    Object.selectionForCompositeField "node" [ Argument.required "id" requiredArgs.id (Gql.Swapi.ScalarCodecs.codecs |> Gql.Swapi.Scalar.unwrapEncoder .codecId) ] object_ (identity >> Decode.nullable)
