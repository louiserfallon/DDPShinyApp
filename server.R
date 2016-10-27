#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    set.seed(2016-05-25)
    x_data <- -80:80
    errors <- rnorm(160,0,100)
    y_data <- input$b0 + input$b1*x_data + input$b2*x_data^2 + input$b3*x_data^3 + errors
    maxX <- input$sliderX[2]
    minY <- input$sliderY[1]
    maxY <- input$sliderY[2]
    plot(x_data, y_data, xlim = c(-80, 80), ylim = c(-1000, 1000))
  })
})