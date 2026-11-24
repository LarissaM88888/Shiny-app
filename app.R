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
            h4("About the Dataset"),
            p("Information about the DIG Trial will appear here.")
          ),
          #Data tab
          tabPanel(
            "Data overview",
             h2("Dataset Overview"),
             p("Explore descriptive statistics for the DIG Trial variables."),
            tableOutput("summary_table")
            
            
            
            
            
            
            
            
          )
            
          )
        )
      )
      )
 server <-function(input,output,session) {
  
#Backend outputs will be connected here
  
  }

 shinyApp(ui = ui, server=server)




