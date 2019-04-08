library(shiny)
library(ggplot2)
library(dplyr)

factor_vals <- c("cyl", "vs", "am", "gear", "carb")
mtcars <- as_tibble(mtcars) %>% mutate_at(factor_vals, factor)

# Server Logic
shinyServer(function(input, output) {
   
  output$main_plot <- renderPlot({
    
    p <- qplot(data=mtcars,
          x=!!as.name(input$x_selector),
          y=!!as.name(input$y_selector)) +
        geom_point(aes(color=!!as.name(input$color_selector),
                       shape = !!as.name(input$shape_selector),
                       size = !!as.name(input$size_selector)))
    
    if (input$trend_check) {
        if (input$trend_selector == "All")
            p <- p + geom_smooth(method = "lm")
        else
            p <- p + geom_smooth(aes(group = !!as.name(input$trend_selector)),
                                 method = "lm")
    }
    
    p
  })
  
})
