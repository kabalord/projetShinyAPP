#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$histogram <- renderPlot({
        hist(faithful$eruptions, breaks = input$bins)
    })
    
    output$msgOutput <- renderMenu({
      msgs <- apply(read.csv("/Users/walterroaserrano/Desktop/UniversiteChampagneArdenne/projetShinyAPP/messages.csv"), 1, function(row){
        messageItem(from = row[["from"]], message = row[["message"]])
      })
      dropdownMenu(type = "messages", .list = msgs)
    })
    
    output$performance <- renderInfoBox({
      infoBox("Performance :", "100%", icon = icon("chart-bar"))
    })
    
    output$itemRequested <- renderValueBox({
      valueBox(15*300, "Item Request by Jouers", icon = icon("fire"), color = "yellow")
    })
})
