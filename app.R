
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
          
          wellPanel(
          h4("About the dataset"),
          p("This dataset contains information colected as part of the DIG trial."),
          p("It includes participant characteristics, treatment group allocation and
            clinical outcones.")
          ),
          
          br(),
          
          h3("Dataset Summary"),
          
          tableOutput("summary_table"),
          
          br(),
          
          h3("Participant Data"),
          
          p("A detailed view of the participant-level data will be displayed here."),
          
          tableOutput("data_table"),
          #Participant Characteristics tab
          tabPanel(
            "Participant Characteristics",
            h2("Participant Characteristics"),
            
            p("Explore the demographic and clinical characteristics of particpants
      in the DIG Trial."),
            
            br(),
            
            h3("Demogaphic Characteristics"),
            
            p("Visualisations of participant demographics will be displayed here."),
            
            br(),
            
            h3("Clincal Characteristics"),
            p("Explore baseline clinical characteristics of trial particpants.")
          ),
          #Treatment comparison tab
          tabPanel(
            "Treatment Comparison",
            
            h2("Treatment Group Comparison"),
            
            p("Explore differences between the treatment and placebo groups."),
            
            br(),
            
            h3("Group Characteristics"),
            
            p("Comparative summaries of the two treatment groups will be displayed
              here."),
            
            br(),
            
            h3("Visual Comparisons"),
            
            p("Interactive charts comparing treatment groups will be displayed
        here.")
              ),
          
             
            
            
          
          
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