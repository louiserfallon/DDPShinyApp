# Server application for quadratic residual plots
# Submitted for the Shiny Assignment of the DDP course


library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    set.seed(2016-05-25)
    x_data <- -80:80
    errors <- rnorm(160,0,100)
    y_data <- input$b0 + input$b1*x_data + input$b2*x_data^2 + input$b3*x_data^3 + errors
    ggplot(data.frame(x_data, y_data),aes(x=x_data,y=y_data)) + geom_point() + ylim(-1000,1000)
  })
  output$plot2 <- renderPlot({
    set.seed(2016-05-25)
    x_data <- -80:80
    errors <- rnorm(160,0,100)
    y_data <- input$b0 + input$b1*x_data + input$b2*x_data^2 + input$b3*x_data^3 + errors
    fitted_model <- lm(y_data ~ x_data)
    modelresiduals <- fitted_model$residuals
    ggplot(data.frame(x_data, modelresiduals),aes(x=x_data,y=modelresiduals)) + geom_point(color="darkblue") + ylim(-1000,1000)
  })
})