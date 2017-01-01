module Main exposing (..)

import Html
import String exposing (left)


(~=) str1 str2 =
    (left 1 str1) == (left 1 str2)


main =
    (~=) "gerard" "gerard" |> toString |> Html.text
