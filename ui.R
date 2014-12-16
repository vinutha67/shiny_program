library(shiny)
#UsingR is a collection of data sets to accompany the textbook "Using R for Introductory 
#Statistics,".best.times is an UsingR data base, of world records in track and field 
#running events for various distances and different age groups.best.times has 113 
#observations on the following 6 variables.
#Dist Distance in meters (42195 is a marathon)
#Name Name of record holder
#Date Date of record
#Time Time in seconds
#Time.1 Time as character
#age Age at time of record
# When a user selects a distance, the  age vs time graph for the distance is displayed.
# It can be visually seen that as the age increases the time taken to cover the same distance
# increases.

# Define UI for Selecting distance to plot Age vs time world running event records
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("World record (Running): Different age groups"),

  
  # Sidebar with radio buttons to select the distance for which time vs Age needs to be plotted
  sidebarPanel(
        p("UsingR is a collection of data sets to accompany the textbook :Using R for Introductory Statistics . I have used best.times data base, which is part of UsingR dataset. best.times is data base, of world records in track and field running events for various distances and different age groups. best.times has 113 observations on the following 6 variables : Dist Distance in meters (42195 is a marathon),Name Name of record holder,Date Date of record,Time Time in seconds,Time.1 Time as character,age Age at time of record. "),
        p("In this application, when a user selects a distance, the age vs time graph for the distance is displayed. It can be visually seen that as the age increases the time taken to cover the same distance increases."),
        radioButtons("variable", "Distance :",
                 c("100" = "100",
                      "200" = "200",
                      "400" = "400",
                      "800" = "800",
                      "1500" = "1500",
                      "3000" = "3000",
                      "5000" = "5000",
                      "10000" = "10000",
                      "42195" = "42195"
   ),                     )),
   mainPanel(
      
    plotOutput("plot")
  )
  
))