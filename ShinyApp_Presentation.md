Course Project for Developing Data Products
========================================================
author: John Chan
date: 20 Jun 2015

The Shiny Application: Predict MPG
========================================================

This is a simple Shiny app to predict miles per gallon (MPG) by transmission type (AM), weight (WT) and acceleration speed (QSEC).

The app is based on a multivariate regression model for the Regression Models Course.

**Outline of this pitch**
- Computation
- server.R
- ui.R

Computation
========================================================
The Regression Model:

MPG = 9.6178 + 2.9358*AM - 3.9165*WT + 1.2259*QSEC


```r
MPG<-function(am,wt,qsec) as.numeric(am)*2.9358 - 3.9165*wt + 1.2259*qsec + 9.6178
```

This model explains 84% of the variance in miles per gallon.

server.R
========================================================
Assign the input values to interactive part of the code using the Shiny syntax. 

With the input values, the predicted MPG is computed.


```r
output$id1<-renderPrint({input$am})
output$id2<-renderPrint({input$wt})
output$id3<-renderPrint({input$qsec})
output$prediction<-renderPrint({MPG(input$am,input$wt,input$qsec)})
```

ui.R
========================================================
The output widgets are put in the Application tab under main panel. The id of the input and output widgets are identical to server.R. Documentation tab gives a brief description of the Shiny application.


```r
sidebarPanel(
        h3('Inputs'),
        radioButtons("am",...,
        sliderInput('wt',...,
        sliderInput('qsec',...),
        submitButton('Submit')                
),
```
