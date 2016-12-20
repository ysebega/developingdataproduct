

library(shiny)

dfshowCAC<- EuStockMarkets[, 1]
dfshowDAX<- EuStockMarkets[, 2]
dfshowSMI<- EuStockMarkets[, 3]
dfshowFTSE<- EuStockMarkets[, 4]


shinyServer(function(input, output) {

  output$EuStock <- renderPlot({
   plot(EuStockMarkets, col=input$var, title(main = input$txtTitle))
     if (input$showCAC){plot(dfshowCAC, col=input$var, title(main = "CAC"))} else
       if (input$showDAX){plot(dfshowDAX, col=input$var, title(main = "DAX"))}else
           if (input$showSMI){plot(dfshowSMI, col=input$var, title(main = "SMI"))}else
               if (input$showFTSE){plot(dfshowFTSE, col=input$var, title(main = "FTSE"))}
  })

})
