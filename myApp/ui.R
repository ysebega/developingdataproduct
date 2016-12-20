

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("European Stock Markets"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("var", 
                  label = "Choose color of the graph",
                  choices = list("Red", "Black",
                                 "Blue", "Yellow"),
                  selected = "Red"),
      submitButton(text="Change Color"),
      textInput("txtTitle", "Enter Text here"),
      checkboxInput("showCAC", "CAC"),
      checkboxInput("showDAX", "DAX"),
      checkboxInput("showSMI", "SMI"),
      checkboxInput("showFTSE", "FTSE"),
      submitButton(text="Show Plot")
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("EuStock")
      
    )
  )
))

