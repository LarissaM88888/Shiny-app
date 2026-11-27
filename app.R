
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
      
      selectInput(
        "treatment_filter",
         "Treatment Group",
        choices = c(
          "All Groups",
          "Placebo",
          "Digoxin"
        ),
        selected = "All Groups"
      ),
      selectInput(
        "sex_filter",
        "Sex",
        choices = c(
          "All",
          "Male",
          "Female"
        ),
        selected = "All"
      ) 
       
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
                h2("6,800"),
                p("Total participants")
              )
            ),
            
            column(
              4,
              wellPanel(
                h4("Treatment Groups"),
                h2("2"),
                p("Placebo: 3,403"),
                p("Digoxin: 3,397")
              )
            ),
            
            column(
              4,
              wellPanel(
                h4("Primary Outcome"),
                h2("DWHF"),
                p("Death or hospitalisation due to heart failure")
              )
            )
            
          ),
          
          br(),
          
          h4("About the DIG Trial"),
          
          p("The DIG Trial investigated the effects of digoxin in patients with heart
            failure. Explore the participant characteristics, treatment allocations and
            clinical outcomes recorded during the study."),
          
          br(),
          
          h3("Treatment Group Distribution"),
          
          p("Explore how particpants were allocated between the digoxin treatment and
            placebo groups."),
          
          wellPanel(
            h4("Treatment Alllocation"),
            plotOutput("treatment_distribution_plot"),
            p("Placebo: 3,403 participants (50.04%)"),
            
            p("Digoxin: 3,397 participants (49.96%)"),
            
            p("The two treatment groups contain approximately equal numbers
              of participants.")
          )
            
            

          
          
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
          
          tableOutput("data_table")
        ),
          #Participant Characteristics tab
          tabPanel(
            "Participant Characteristics",
            h2("Participant Characteristics"),
            
            p("Explore the demographic and clinical characteristics of particpants
      in the DIG Trial."),
            
            br(),
            
            h3("Demogaphic Characteristics"),
            
            wellPanel(
              h4("Age Distribution"),
              plotOutput("age_distribution_plot")
            ),
            
            br(),
            
            h3("Clinical Characteristics"),
            
            wellPanel(
              h4("Baseline Clinical Characteristics"),
              plotOutput("clinical_charcteristics_plot")
            )
          ),
              
            
            
      
            
          
         
          #Treatment comparison tab
          tabPanel(
            "Treatment Comparison",
            
            h2("Treatment Group Comparison"),
            
            p("Explore differences between the treatment and placebo groups."),
            
            br(),
            
            h3("Group Characteristics"),
            
            wellPanel(
              h4("Age by Treatment Group"),
              plotOutput("age_group_plot")
            ),
            
            br(),
            
            h3("Clinical Comparisons"),
            
            wellPanel(
              h4("Baseline Clinical Characteristics by Group"),
              plotOutput("clinical_group_plot")
            )
          ),
          
            
           
          #Outcome and analysis tab
        tabPanel(
          "Outcome & Analysis",
          
          h2("Clinical Outcomes"),
          
          p("Explore clinical outcomes recorded during the DIG trial."),
          
          br(),
        
        
            h3("Primary Outcome"),
            
        
            wellPanel(
              h4("Death or Hospitalisation Due to Heart Failure (DWHF) "),
              plotOutput("primary_outcome_plot")
            ),
    
  
            br(),
            
            h3("Secondary Outcomes"),
            
            wellPanel(
              h4("Secondary Clinical Outcomes"),
              plotOutput("secondary_outcomes_plot")
            )
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