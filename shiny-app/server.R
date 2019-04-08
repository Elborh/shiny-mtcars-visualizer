library(shiny)
library(ggplot2)
library(dplyr)

factor_vals <- c("cyl", "vs", "am", "gear", "carb")
mtcars <- as_tibble(mtcars) %>% mutate_at(factor_vals, factor)

# Server Logic
shinyServer(function(input, output) {
   
  output$main_plot <- renderPlot({
    
    qplot(data=mtcars,
          x=!!as.name(input$x_selector),
          y=!!as.name(input$y_selector),
          color=!!as.name(input$color_selector),
          shape = !!as.name(input$shape_selector),
          size = !!as.name(input$size_selector))
    
  })
  
})
