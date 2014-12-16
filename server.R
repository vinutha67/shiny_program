library(shiny)
library(ggplot2)
library(UsingR)
 
# best times has the time records of different ages and distances
besttimes <- data(best.times)
 

# Define server logic required to plot Time  vs Age for a selected distance 
shinyServer(function(input, output) {


  # render a reactive plot depending on the distance selected 
  output$plot <-  renderPlot({
  
  #subset best.times on the distance value selected as input   
  dist_var <-subset(best.times, Dist==as.numeric(input$variable))
  
  # create a dataframe of only Time and age variables for the selected distance
  passData <- data.frame(Time = dist_var$Time, Age = dist_var$age)
  
  #create a qplot
   p <- qplot(Time,Age,data=passData, xlab="Time (seconds)") +ylim(30,100)+ggtitle(bquote(atop(("Age vs Time - Distance :"),atop(.(input$variable)))))
   print(p)
  })   
})