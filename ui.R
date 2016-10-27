# UI application for quadratic residual plots
# Submitted for the Shiny Assignment of the DDP course

library(shiny)

shinyUI(fluidPage(
  titlePanel("Quadratic Impact on Residual Plots"),
    fixedRow(
      column(4,
      h6("This application shows the different residual plots for
         a linear model:"),
      h6("y= b1 + b2x"),
      h6("with the dependent variable y and the independent variable x,
         for different true models:"),
      h6("y = b1 + b2x+ b3x^2+b3x^3")),
      column(4,
      sliderInput("b0", "choose the value for b0:",
                  min = -800, max = 800, value = 0, step= 0.1),
      sliderInput("b2", "choose the value for b2:",
                  min = -0.8, max = 0.8, value = 0, step= 0.05)),
      column(4,
      sliderInput("b1", "choose the value for b1:",
                         min = -80, max = 80, value = 0, step= 0.1),
      sliderInput("b3", "choose the value for b3:",
                  min = -0.008, max = 0.008, value = 0, step= 0.001))),
  fixedRow(
    column(6,
           h2("Data Plot"),
           plotOutput("plot1", height="300px")),
    column(6,
           h2("Residual Plot"),
           plotOutput("plot2",height="300px")))
  ))