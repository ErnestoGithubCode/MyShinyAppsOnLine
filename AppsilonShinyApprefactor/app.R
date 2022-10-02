library(shiny)
library(shiny.fluent)
library(dplyr)
library(glue)
library(plotly)
library(leaflet)
library(R6)

source("./appClass.R")
source("./functions.R")

# Taken from : https://appsilon.github.io/shiny.fluent/articles/shiny-fluent.html
# This a refactored Shiny App comming from Appsilon 
# refactored to OOP R6 Class by Ing. Ernesto Ibanez

#shinyApp(ui, server)+
app = App$new()

# , options = list(display.mode = "auto")
shiny::shinyApp(app$ui(), app$server)