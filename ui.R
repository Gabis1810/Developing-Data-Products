# Carlos Gabriel Guerra Farfán
# Developing Data Products
# Week 4
# Course Project

library(shiny)

# Load Data
prpeople <- read.csv("C:/Users/gabis/OneDrive/Documentos/Scribble/7mo Semestre/Actividad Curricular Complementaria/Coursera/Developing Data Products/Semana 4/puertoricansinusa.csv")

# Use a fluid Bootstrap Layout 
fluidPage(     
  # Give the page a title 
  titlePanel("Puerto Ricans by State"), 
  # Generate a row with a sidebar 
  sidebarLayout(       
    # Define the sidebar with one input 
    sidebarPanel(p(strong("Documentation:", style = "color:red"),
                   a("User Help Page", href = "https://github.com/Gabis1810/Developing-Data-Products")), 
                 selectInput("Region", "Region:", choices = colnames(prpeople)), 
                 hr(), helpText("Puerto Rican Diaspora.")), 
    # Create a Spot for the Barplot 
    mainPanel( 
      plotOutput("people"))))
