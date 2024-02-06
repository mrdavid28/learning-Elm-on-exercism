module SqueakyClean exposing (clean, clean1, clean2, clean3, clean4)
import Regex exposing (..)


clean1 : String -> String
clean1 str =
 String.replace " " "_" str

clean2 : String -> String
clean2 str =
    str
        |> clean1
        |> String.replace "\n" "[CTRL]"
        |> String.replace "\t" "[CTRL]"
        |> String.replace "\r" "[CTRL]"


-- Capitalize the first letter of a string
capitalize : String -> String
capitalize str =
  -- Use String.slice to get the first and the rest of the string
  let
    first = String.slice 0 1 str
    rest = String.slice 1 (String.length str) str
  in
  -- Use String.toUpper to capitalize the first part only
  String.toUpper first ++ rest


-- Implement the clean3 function
clean3 : String -> String
clean3 str =
  let
    -- Replace spaces and control characters
    replaced = str
      |> String.replace " " "_"
      |> String.replace "\n" "[CTRL]"
      |> String.replace "\t" "[CTRL]"
      |> String.replace "\r" "[CTRL]"
    -- Split the string by hyphens and join them back
    parts = String.split "-" replaced
  in
  case parts of
    -- If the list is empty, return an empty string
    [] ->
      ""

    -- If the list has only one element, return it as is
    [ first ] ->
      first

    -- If the list has more than one element, capitalize the rest and join them
    first :: rest ->
      first ++ String.join "" (List.map capitalize rest)             

clean4 : String -> String
clean4 str =
    str
        |>clean3
        |> String.filter (\char -> not (Char.isDigit char)) 
clean : String -> String
clean str =
    str
        |>clean4
