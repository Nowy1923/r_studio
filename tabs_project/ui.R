
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(theme = "style.css",

    titlePanel("My Super Shiny App Example !"),
    
    navlistPanel(
      "Tabs:",
      tabPanel("Tab 1 - Histogram",
         sidebarLayout(
           sidebarPanel(
             sliderInput("bins",
               "Number of bins:",
               min = 1,
               max = 50,
               value = 30)
           ),
           
           # Show a plot of the generated distribution
           mainPanel(
             plotOutput("distPlot")
           )
         )
      ),
      tabPanel("Tab 2 - nothing",
               h3("This is the second panel")
      ),
      tabPanel("Tab 3 - also nothing",
               h3("This is the third panel")
      )
    )
 
))
