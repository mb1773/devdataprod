dayborn <- function(odate) wday(as.Date(odate))
  ##                                   )
## inputdate <- as.date(c(input$id1, "/", input$id2, "/", input$id3))
## print(inputdate)
## dayofweek <- wday(inputdate)

shinyServer(
  function(input, output, session) {
    output$dateText  <- renderText({
      
      paste("input$date is", as.character(input$date))
      
    })

    output$dayborn <- renderPrint({dayborn(input$date)})
  }
)