#READ DATA AND PREPARE TABLE TO USE FOR FURTHER ANALYSIS
library(tidyverse)
library(dplyr) #to use pipe operator
murders <- read.csv("data/murders.csv") #using relative path
murders <- murders %>%  mutate(region = factor(region), rate = total / population * 10^5)
save(murders, file = "rda/murders.rda") #command saves objects into rda file (RDA = R Data). .RData is also used (rda is preferred)
