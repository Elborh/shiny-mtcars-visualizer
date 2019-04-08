library(shiny)

select_options <- names(mtcars)
factor_vals <- c("cyl", "vs", "am", "gear", "carb")

shinyUI(fluidPage(
    
    # Styles
    tags$head(
        tags$style(
            ".title {margin: auto; width: 500px} .centered {text-align: center}"
        )
    ),
    
    # Title
    tags$div(class="title", titlePanel("Visualize the mtcars R data set")),
    
    hr(),
   
    # Side bar 
    sidebarLayout(
    
        sidebarPanel(
            selectInput("x_selector",
                        "Select X",
                        select_options,
                        "wt"
            ),
            selectInput("y_selector",
                        "Select Y",
                        select_options,
                        "mpg"
            ),
            selectInput("color_selector",
                        "Color by",
                        select_options,
                        "cyl"
            ),
            selectInput("shape_selector",
                        "Shape by",
                        factor_vals,
                        "am"
            ),
            selectInput("size_selector",
                        "Size by",
                        select_options,
                        "hp"
            ),
            checkboxInput("trend_check",
                          "Show Trend Line"
            ),
            selectInput("trend_selector",
                        "Trend line by",
                        c("All", factor_vals),
                        "All"
            )
        ),
        
    # Main Pannel
    mainPanel(
        tags$div(class="centered", h3("Here is your plot")),
        plotOutput("main_plot"),
        tags$div(class="centered",
                 tags$a(href="https://github.com/Elborh/shiny-mtcars-visualizer", 
                        "PLEASE SEE DOCUMENTATION HERE!")
        )
        
    )
  )
))

