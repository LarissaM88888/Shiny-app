library(shiny)
library(shiny)

# --------------------------------
# USER INTERFACE
# --------------------------------

ui <- fluidPage(
  
  # App title
  titlePanel("DIG Trial Data Dashboard"),
  
  # Sidebar and main panel
  sidebarLayout(
    
    # SIDEBAR
    sidebarPanel(
      
      h3("Dashboard Controls"),
      
      p("Use the navigation tabs to explore the DIG Trial dataset."),
      
      hr(),
      
      h4("Filters"),
      
      helpText("Data filters will be added here.")
      
    ),
    
    # MAIN DASHBOARD
    mainPanel(
      
      tabsetPanel(
        
        # ----------------------------
        # OVERVIEW TAB
        # ----------------------------
        
        tabPanel(
          "Overview",
          
          h2("Welcome to the DIG Trial Dashboard"),
          
          p("Explore the DIG Trial dataset using interactive visualisations and summaries."),
          
          br(),
          
          # Summary cards
          fluidRow(
            
            column(
              4,
              wellPanel(
                h4("Trial Participants"),
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
          
        ),
        
        # ----------------------------
        # DATA OVERVIEW TAB
        # ----------------------------
        
        tabPanel(
          "Data overview",
          
          h2("DIG Trial Dataset"),
          
          p("Explore the structure and characteristics of the trial dataset."),
          
          br(),
          
          h3("Dataset Information"),
          
          p("This section provides an overview of the DIG Trial data, including participant information and recorded variables."),
          
          br(),
          
          h3("Dataset Summary"),
          
          tableOutput("summary_table"),
          
          br(),
          
          h3("Participant Data"),
          
          p("A detailed view of the participant-level data will be displayed here."),
          
          tableOutput("data_table")
          
        )
        
      )
      
    )
    
  )
  
)


# --------------------------------
# SERVER
# --------------------------------

server <- function(input, output, session) {
  
  # Backend outputs will be connected here.
  
  
}


# --------------------------------
# RUN SHINY APP
# --------------------------------

shinyApp(ui = ui, server = server)