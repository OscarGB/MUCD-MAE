library(tidyverse)

# Cálculo y representación de la f empírica

df <- data.frame(x= c(3,5,6,7))

ggplot(df) +
  stat_ecdf(aes(x)) + 
  stat_ecdf(aes(x), geom = 'point')
