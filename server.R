# Guillaume Lobet - University of Liege

shinyServer(
  
  function(input, output) {  
    
    #------------------------------------------------------
    # PROCESS THE DATA
    observeEvent(input$runARCHISHINY, {
      
        # Simulation parameters
        # Get the different parameters, from a random continuous distribution
        params$dmin                       <- input$P_dmin
        params$dmax                       <- input$P_dmax
        params$max_num_sem                <- input$P_nbMaxPrim
        params$slope_elongation_diam      <- input$P_penteVitDiam
        params$inter_prim_distance        <- input$P_distRamif
        params$growth_duration_coef       <- input$P_maxLatAge
        params$sim_length                 <- input$time_in_sim
        params$radial_growth_coef         <- input$P_coeffCroissRad
        params$intensity_tropism          <- input$P_intensity_tropism
        
        # Setup the name of the file, containing the principal info about the simulation
        setwd("www")
        
        print(params$sim_length)
        
        write_archisimple(params, params_file)
        
        # system("g++ *.cpp -std=c++11 -o archisimple")
        system("./archisimple")  # Run Archisimple
        setwd("../")
        print("done")
        
        return(params)
      
    })
    
       
    # Show the root system
    output$plotroot <- renderPlot({
      
      if (input$runARCHISHINY == 0){return(NULL)}
      
      fread("www/seg.txt", header = T) %>%
        ggplot() +
        theme_classic() +
        geom_segment(aes(x = X1, y = -Z1, xend = X2, yend = -Z2), alpha=0.9) +
        coord_fixed()    
      
    }
    )
    
    
    
    
    
  }
)