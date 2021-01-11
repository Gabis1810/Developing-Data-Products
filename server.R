# Carlos Gabriel Guerra Farfán
# Developing Data Products
# Week 4
# Course Project

library(shiny)

# Load Data
prpeople <- read.csv("C:/Users/gabis/OneDrive/Documentos/Scribble/7mo Semestre/Actividad Curricular Complementaria/Coursera/Developing Data Products/Semana 4/puertoricansinusa.csv")

# Define a Server for the Shiny app 
function(input, output) { 
  # Fill in the Spot we created for a Plot 
  output$people <- renderPlot({ 
    # Render a Barplot 
    barplot(prpeople[,input$Region],  
            main = input$Region, 
            ylab = "Number of Puerto Rican in USA", 
            xlab = "Year")})
}
