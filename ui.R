# Guillaume Lobet - University of Liege
# This file contains the User Interface details for the Shiny app.


library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel(h1("- ArchiSimple -")),
  
  # Sidebar with a Simulations outputs
  sidebarLayout(
    sidebarPanel(

      helpText("Guillaume Lobet, Loic Pages."),
      
      tags$hr(),      
      
      actionButton(inputId = "runARCHISHINY", label="Unleash ArchiSimple"),
      tags$hr(),      
      
      sliderInput("time_in_sim", "Time in simulation:", 
                  min=params$sim_length / 4, 
                  max=params$sim_length, 
                  value=params$sim_length),
      
      sliderInput("P_dmin", "Minimal diameter:",
                  min=params$dmin / 4, 
                  max=params$dmin * 4, 
                  value= params$dmin, 
                  step= params$dmin / 10),
      
      sliderInput("P_dmax", "Maximal diameter:", 
                  min=params$dmax / 4, 
                  max=params$dmax * 4, 
                  value= params$dmax, 
                  step= params$dmax / 10),
      
      sliderInput("P_nbMaxPrim", "Number of primary:", 
                  min=round(params$max_num_sem / 4), 
                  max=round(params$max_num_sem * 4), 
                  value= params$max_num_sem, 
                  step= params$max_num_sem / 10),

      sliderInput("P_distRamif", "Interbranch distance:", 
                  min=params$inter_prim_distance / 4, 
                  max=params$inter_prim_distance * 4, 
                  value= params$inter_prim_distance, 
                  step= params$inter_prim_distance / 10),

      sliderInput("P_coeffCroissRad", "Radial growth:", 
                  min=params$radial_growth_coef / 4, 
                  max=params$radial_growth_coef * 4, 
                  value= params$radial_growth_coef, 
                  step= params$radial_growth_coef / 10),
      
      sliderInput("P_maxLatAge", "Lateral max age:", 
                  min=params$growth_duration_coef / 4, 
                  max=params$growth_duration_coef * 4, 
                  value= params$growth_duration_coef, 
                  step= params$growth_duration_coef / 10),
      
      sliderInput("P_penteVitDiam", "Slope growth/diam:", 
                  min=params$slope_elongation_diam / 4, 
                  max=params$slope_elongation_diam * 4, 
                  value= params$slope_elongation_diam, 
                  step= params$slope_elongation_diam / 10),
      
      # Run the simulations
      
      tags$hr()
    
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(     
        tabPanel("Root system",
                 plotOutput("plotroot", width = "400px"),
                value=1
        ),
        id="tabs1"
      )
    )
  )
))