#GENERATE THE ANALYSIS
library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  coord_flip()
#Generates a new file. We can save the file with ggsave but we have to be organized and keep figures in its own folders
#In the terminal we type mkdir figs inside our project directory

ggsave("figs/barplot.png")#Save the file to the created directory