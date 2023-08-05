library(shiny)
library(ggplot2)
library(dplyr)

# Load the data
df <- read.csv('insurance.csv', header = TRUE)

# UI
ui <- fluidPage(
  titlePanel("Medical Charges Prediction"),
  sidebarLayout(
    sidebarPanel(
      numericInput("age", "Age:", 25, min = 18, max = 100),
      numericInput("bmi", "BMI:", 25, min = 15, max = 50),
      selectInput("smoker", "Smoker:", choices = c("No", "Yes")),
      selectInput("region", "Region:", choices = unique(df$region)),
      numericInput("children", "Number of Children:", 0, min = 0, max = 10)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotOutput("charge_plot")),
        tabPanel("Prediction", textOutput("prediction"))
      )
    )
  )
)

# Server
server <- function(input, output) {
  output$charge_plot <- renderPlot({
    ggplot(df, aes_string(x = input$smoker, y = "charges")) +
      geom_boxplot() +
      labs(title = paste("Charges by Smoker Status for", input$smoker))
  })
  
  output$prediction <- renderText({
    new_data <- data.frame(
      age = input$age,
      bmi = input$bmi,
      smoker = input$smoker,
      region = input$region,
      children = input$children
    )
    charge_pred <- predict(model1, new_data)
    paste("Predicted Charges: $", round(charge_pred, 2))
  })
}

# Run the Shiny app
shinyApp(ui = ui, server = server)
