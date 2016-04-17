import Time exposing (every, second)
import Date exposing (hour, minute, second, fromTime)
import Date.Format
import Html exposing (text, p)
import Html.Attributes exposing (style)

main =
  Signal.map currentT (Time.every Time.second)

s' =
  style
  [ ("width", "300px")
  , ("margin", "50px auto")
  , ("font-weight", "bold")
  ]

currentT t =
  let date' = fromTime t
      now = "Hello World! (now: " ++ Date.Format.format "%H:%M:%S" date' ++ ")"
  in 
      p [s'] [text now]
