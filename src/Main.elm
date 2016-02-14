import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown

markdownText : String
markdownText = """

# Apple Pie Recipe

1. Invent the universe.
2. *Bake* an apple pie.

"""

markdownHtml : Html
markdownHtml =
  Markdown.toHtml markdownText

logo : Html
logo = 
  div 
    [ class "logo" ] 
    [text "logo"]

title : Html
title = 
  div 
    [ class "title" ] 
    [text "title"]

navigation : Html
navigation = 
  div 
    [ class "navigation" ] 
    [text "navigation"]

header : Html
header = 
  div 
    [ class "header" ]
    [ 
      logoAndTitle, 
      navigation 
    ]

logoAndTitle : Html
logoAndTitle = 
  div
    [ class "logo-and-title" ]
    [
      logo,
      title
    ]

sidebar : Html
sidebar = 
  div 
    [ class "sidebar" ]
    [ text "sidebar" ]

post : Html
post =
  div 
    [ class "post" ]
    [ markdownHtml ]

content : Html
content =
  div
     [ class "content"]
     [ 
       sidebar, 
       post 
     ]

main : Html
main = 
  div
    [ class "container" ]
    [
      header, 
      content
    ]
