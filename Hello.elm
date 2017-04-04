module Hello exposing (..)

import Html exposing (Html, div, program)


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Hello poop", Cmd.none )


type Msg
    = NoOp



-- View


view : Model -> Html Msg
view model =
    div []
        [ Html.text model ]



-- Model


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- Main


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
