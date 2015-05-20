library(shiny)
library(lubridate)
# Define UI for application that calulates #of days alive
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Day of Birth Calculator"),
  # Sidebar with numeric input
  sidebarPanel(
    dateInput('date', "Date: YYYY-MM-DD"),
    submitButton('Submit')
  ),
  mainPanel(
    h5('This is a simple app that calculates the Day of Week that you were born'),
    h5('Enter date of birth on left--in format shown--and press submit'),
    h3('Results of Calculation'),
    h4('You entered'),
    verbatimTextOutput("dateText"), 
    h4('Which resulted in the Day of the Week that you were Born '),
    h5('Note: Sunday=1, Monday=2 ...Saturday=7'),
   verbatimTextOutput("dayborn")
  )
)
)
