module Hello exposing (..)

import Html exposing (Html, text, div, button, program)
import Html.Events exposing (onClick)


type alias Model =
    Bool


init : ( Model, Cmd Msg )
init =
    ( False, Cmd.none )


type Msg
    = Expand
    | Collapse



-- View


view : Model -> Html Msg
view model =
    if model then
        div []
            [ button [ onClick Collapse ] [ text "Collapse" ]
            , text "Widget"
            ]
    else
        div []
            [ button [ onClick Expand ] [ text "Expand " ] ]



-- Model


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Expand ->
            ( True, Cmd.none )

        Collapse ->
            ( False, Cmd.none )



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
