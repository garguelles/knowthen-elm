module Main exposing (..)

import Html
import String exposing (slice)


getFirstLetter str =
    slice 0 1 str


(~=) str1 str2 =
    (getFirstLetter str1) == (getFirstLetter str2)


main =
    "gerard" ~= "gerard" |> toString |> Html.text
