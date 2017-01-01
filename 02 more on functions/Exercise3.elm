module Main exposing (..)

import Html
import String
import List


wordCount =
    String.words >> List.length


main =
    "Wireless hd audio headphones five"
        |> wordCount
        |> toString
        |> Html.text
