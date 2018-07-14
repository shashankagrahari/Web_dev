#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
 titlePanel(h1(strong("Student INFO."))),
 sidebarLayout(
   sidebarPanel(
     textInput("sname","Student Name"), 
     textInput("fname","Fathers Name"),
     textInput("mname","Mothers Name"),
     dateInput("dob","Date of Birth"),
     textAreaInput("address","Permanent Address"),
     radioButtons("gender","Gender",choices = c("Male","Female","Others")),
     actionButton("saveb","SAVE")
     
     ),
   mainPanel(tableOutput("Studentdata"))
 )
))
