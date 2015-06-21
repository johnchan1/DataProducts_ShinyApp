library(shiny)

MPG<-function(am,wt,qsec) as.numeric(am)*2.9358-3.9165*wt+1.2259*qsec+9.6178

shinyServer(
        function(input,output) {
                output$id1<-renderPrint({input$am})
                output$id2<-renderPrint({input$wt})
                output$id3<-renderPrint({input$qsec})
                output$prediction<-renderPrint({MPG(input$am,input$wt,input$qsec)})
        }
)