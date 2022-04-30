setwd("C:/Data")
getwd()

library(tidyverse)
library(rvest)


URL <- "https://www.demographic-research.org/volumes/vol45/default.htm"
res <- read_html(URL)

#volume
pattern <- ".articles_info span:nth-child(1)"
volume <- res %>% 
  html_nodes(pattern) %>% 
  html_text() 

#pubdate
pattern <- ".articles_header , .articles_header_noborder"
pubdate <- res %>% 
  html_nodes(pattern) %>% 
  html_text()
pubdate <- str_sub(pubdate, 1, 17)
pubdate
