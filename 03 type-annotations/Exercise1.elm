module Main exposing (..)

import Html
import Debug exposing (log)


cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


setFreeQty requiredQty freeItem item =
    if item.qty >= requiredQty then
        { item | freeQty = freeItem }
    else
        item


newCart =
    List.map ((setFreeQty 5 1) >> (setFreeQty 10 3)) cart


main =
    toString newCart |> Html.text
