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
            sliderInput("bins", "Number of breaks", 1,100,50),
            sidebarMenu(
            menuItem("Dashboard", tabName = "dashboard"),
                menuSubItem("Clubs", tabName = "clubs"),
                menuSubItem("Jouers", tabName ="jouers" ),
            menuItem("Detailed Analysis", tabName = "detailed analysis"),
            menuItem("Raw Data", tabName = "row data")
            )
        ),
        dashboardBody(
            tabItems(
                tabItem(tabName = "dashboard", 
                        fluidRow(
                            box(plotOutput("histogram"))
                        )
                    ),
                tabItem(tabName = "clubs",
                      h1("clubs tab"),  
                        ),
                tabItem(tabName = "jouers",
                        h1("jouers tab")
                        )
            )
        ) 
    )
)
