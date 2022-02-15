# ArchiSimple | Shiny version

## Overview

ArchiShiny is an interface for the model ArchiSimple. Allows to easily use the model and test the influence of different parameters

## Running ArchiShiny

**DISCLAIMER : ** works only on mac right now. 

To run it, enter the following command in your R console : 

ArchiShiny has been developed as a Shiny app, to ease its maintenance and deployment. 

Running the app is really simple an does not require any coding skills:

1. Install [R](https://www.r-project.org/) (if you do not have the latest version of R, it will help to update it)
2. (*Optional*) Install [RStudio](https://www.rstudio.com/) 
3. Open `R` and, in the console, type in the following code:

``` 
install.packages("shiny")
library("shiny")
shiny::runGitHub("archisimple/archishiny", "archisimple")
```

4. ArchiShiny will open, either in a new window if you are using `RStudio`, or in your favorite web browser.

