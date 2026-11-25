library(shiny)
ui <- fluidPage(
  #App Title
    titlePanel("DIG Trial Data Dashboard"),

#Sidebar and main panel
    sidebarLayout(
      
      #Sidebar
      sidebarPanel(
        h3("Dashboard Controls"),
        
        p("Use the navigation tabs to explore the DIG Trial dataset."),
        
        hr(),
        
        h4("Filters"),
        
        helpText("Data filters will be added here.")
      ),
      
      #Main dashboard
      mainPanel(
        
        tabsetPanel(
          #Overview tab
          tabPanel(
            "Overview",
            h2("Welcome to the DIG Trial Dashboard"),
            p("Explore the DIG Trial dataset using interactive visualisations and 
  summaries."),
            br(),
 fluidRow(
   column(
     4,
     wellPanel(
            h4("Trial Particpants"),
            h2("24"),
            p("Total observations")
          )
     ),
           column(
             4,
            wellPanel(
             h4("Treatment Groups"),
             h2("2"),
             p("Comparison groups")
      )
    ),
    column(
      4,
      wellPanel(
        h4("Primary Outcome"),
        h2("DIG"),
        p("Trial outcome")
      )
    )
 ),
 br(),
 h4("About the DIG Trial"),
 p("Explore the trial design, participant characteristics and study outcomes.")
 

   
  
   
   
             
            
            
        
            
            
            
            
            
            
            
            
          )
            
          )
        )
      )
      )
 server <-function(input,output,session) {
  
#Backend outputs will be connected here
  
  }

 shinyApp(ui = ui, server=server)




