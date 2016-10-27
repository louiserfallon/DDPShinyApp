#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Plot Random Numbers"),
  sidebarLayout(
    sidebarPanel(
      h2("Quadratic Impact on Residual Plots"),
      h4("This application shows the different residual plots for
         a linear model:"),
      h6("y= b1 + b2x"),
      h6("with the dependent variable y and the independent variable x,
         for different true models:"),
      h6("y = b1 + b2x+ b3x^2+b3x^3"),
      sliderInput("b0", "value for b0:",
                  min = -800, max = 800, value = 0, step= 0.1),
      sliderInput("b1", "b1:",
                  min = -80, max = 80, value = 0, step= 0.1),
      sliderInput("b2", "b2:",
                  min = -0.8, max = 0.8, value = 0, step= 0.05),
      sliderInput("b3", "b3:",
                  min = -0.008, max = 0.008, value = 0, step= 0.001)
    ),
    mainPanel(
      h3("Graph of raw data"),
      plotOutput("plot1")
    )
  )
))