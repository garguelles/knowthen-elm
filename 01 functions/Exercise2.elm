module Main exposing (..)

import Html exposing (text)
import String exposing (length, toUpper)


printResult name nameLength =
    text (name ++ " - name length: " ++ nameLength)


displayName name =
    let
        nameLength =
            length name
    in
        if nameLength > 10 then
            printResult (toUpper name) (toString nameLength)
        else
            printResult name (toString nameLength)


main =
    displayName "Gerard Arguelles"
