library(shiny)
ui <- fluidPage(
    mainPanel(
        sliderInput("obs",
            "Number of observations",
            min = 1,
            max = 1000,
            value = 100
        ),
        plotOutput("distPlot")
    )
)
server <- function(input, output) {
    output$distPlot <- renderPlot({
        dist <- runif(input$obs)
        hist(dist,
            col = "pink",
            xlab = "Random values"
        )
    })
}
shinyApp(ui = ui, server = server)