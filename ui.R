library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Developing Data Products - Course Project - Predict MPG"),
        sidebarPanel(
                h3('Inputs'),
                radioButtons("am","Transmission Type",choices=list('Automatic ("0")'=0,'Manual ("1")'=1),selected=0),
                sliderInput('wt','Weight 1000lb',min=1,max=6,value=3,step=0.5),
                sliderInput('qsec','Acceleration Speed (1/4 mile time)',min=14.50,max=22.90,value=18,step=0.1),
                submitButton('Submit')                
        ),
        mainPanel(                        
                tabsetPanel(
                        tabPanel("Documentation", 
                                 h3('Description'),
                                 p('This is a shiny application created as a project submission for the Coursera Developing Data Products course.'),
                                 p('The app predicts the miles per gallon of a car based on user inputs of'), 
                                 p('1) whether the car has an automatic or manual transmission;'), 
                                 p('2) the weight of the car (in 1000lbs); and'),
                                 p('3) Acceleration Speed.'),
                                 h3('Using the application'),
                                 p('To make a prediction, select the desired inputs in the side panel on the left, then click the Submit button.'),
                                 p('Your inputs and the predicted miles per gallon will be displayed on the Application tab.')
                        ), 
                        tabPanel("Application", 
                                 h3('Results of prediction'),                                 
                                 h4('Transmission Type'),
                                 verbatimTextOutput("id1"),
                                 h4('Weight 1000lb'),
                                 verbatimTextOutput("id2"),
                                 h4('Acceleration Speed'),
                                 verbatimTextOutput("id3"),
                                 h4('The predicted miles per gallon is'),
                                 verbatimTextOutput("prediction")
                        )
                )
        )
))