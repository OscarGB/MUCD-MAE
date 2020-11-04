library(tidyverse)

medias = 2*sqrt(replicate(1000, mean(rpois(10,5))))
var(medias)
