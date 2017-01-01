module Main exposing (..)

import Html
import Debug exposing (log)


type alias Item =
    { name : String, qty : Int, freeQty : Int }


cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


setFreeQty : Int -> Int -> Item -> Item
setFreeQty requiredQty freeItem item =
    if item.qty >= requiredQty then
        { item | freeQty = freeItem }
    else
        item


newCart =
    List.map ((setFreeQty 5 1) >> (setFreeQty 10 3)) cart


main =
    toString newCart |> Html.text
