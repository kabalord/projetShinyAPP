#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram
shinyUI(
    dashboardPage(
        dashboardHeader(title = "Football"),
        dashboardSidebar(
            menuItem("Dashboard"),
                menuSubItem("Clubs"),
                menuSubItem("jouers"),
            menuItem("Detailed Analysis"),
            menuItem("Raw Data")
        ),
        dashboardBody(
            fluidRow(
                box(plotOutput("histogram")),
                box(sliderInput("bins", "Number of breaks", 1,100,50))
            )
        ) 
    )
)
