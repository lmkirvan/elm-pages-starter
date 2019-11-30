module DocumentSvg exposing (view)

import Color
import Element exposing (Element)
import Svg exposing (..)
import Svg.Attributes exposing (..)


strokeColor =
    -- "url(#grad1)"
    "black"


pageTextColor =
    "black"


fillColor =
    "url(#grad1)"



-- "none"


fillGradient =
    gradient
        (Color.rgb255 0 75 200)
        (Color.rgb255 0 100 75)



-- (Color.rgb255 252 0 255)
-- (Color.rgb255 0 219 222)
-- (Color.rgb255 255 93 194)
-- (Color.rgb255 255 150 250)


gradient color1 color2 =
    linearGradient [ id "grad1", x1 "0%", y1 "0%", x2 "100%", y2 "0%" ]
        [ stop
            [ offset "10%"
            , Svg.Attributes.style ("stop-color:" ++ Color.toCssString color1 ++ ";stop-opacity:1")
            ]
            []
        , stop [ offset "100%", Svg.Attributes.style ("stop-color:" ++ Color.toCssString color2 ++ ";stop-opacity:1") ] []
        ]

view : Element msg
view =
    svg
        [ width "210"
        , height "110"
        , viewBox "0 0 210 110" 
        , Svg.Attributes.strokeWidth "5px"
        , Svg.Attributes.width "70px" 
        , Svg.Attributes.height "35px"
        ]
        [ g []
            [ line [ stroke "#00644b", x1 "5", y1 "5",  x2 "205", y2 "105" ] []
            , line [ stroke "#00644b", x1 "5", y1 "5",  x2 "5", y2 "105" ] [] 
            , line [ stroke "#00644b", x1 "5", y1 "5",  x2 "105", y2 "105" ] []
            , line [ stroke "#00644b", x1 "105", y1 "5",  x2 "105", y2 "105" ] []
            , line [ stroke "#00644b", x1 "105", y1 "5",  x2 "5", y2 "105" ] [] 
            , line [ stroke "#00644b", x1 "105", y1 "5",  x2 "205", y2 "105" ] [] 
            , line [ stroke "#00644b", x1 "205", y1 "5",  x2 "205", y2 "105" ] [] 
            , line [ stroke "#00644b", x1 "205", y1 "5",  x2 "105", y2 "105" ] [] 
            , line [ stroke "#00644b", x1 "205", y1 "5",  x2 "5", y2 "105" ] []
            , circle [ fill "#00644b", cx "5",  cy "5", r "6" ] []
            , circle [ fill "#00644b", cx "105",  cy "5", r "6" ] []
            , circle [ fill "#00644b", cx "205",  cy "5", r "6" ] []
            , circle [ fill "#00644b", cx "5",  cy "105", r "6" ] []
            , circle [ fill "#00644b", cx "105",  cy "105", r "6" ] []
            , circle [ fill "#00644b", cx "205",  cy "105", r "6" ] []
            ]            
        ]       
        |> Element.html
        |> Element.el []
