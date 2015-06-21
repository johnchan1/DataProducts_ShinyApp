DataProducts_ShinyApp

# Peer Assessments/Course Project: Shiny Application and Reproducible Pitch

This peer assessed assignment has two parts -

1. Create a Shiny application and deploy it on Rstudio's servers
2. Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about the application.

# The Shiny Application: Predict MPG
This is a simple Shiny app to predict miles per gallon (MPG) by transmission type (AM), weight (WT) and acceleration speed (QSEC).

The app is based on a multivariate regression model for the Regression Models Course.

The Regression Model:

MPG = 9.6178 + 2.9358 * AM - 3.9165 * WT + 1.2259 * QSEC

This model explains 84% of the variance in miles per gallon.

To use the app to predict MPG, you need to input the transmission type, weight and acceleration speed. The app will show the predicted MPG after clicking the Submit button.
