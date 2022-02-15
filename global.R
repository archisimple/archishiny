
# Guillaume Lobet - University of Liege


# Global libraries

# setwd("www")
# system("g++ *.cpp -std=c++11 -o archisimple")
# setwd("../")

library(tidyverse)
library(data.table)
source("www/io_archisimple.R")

params_file <- "paramarch93.txt"

params <- read_archisimple("www/param_base.txt")



