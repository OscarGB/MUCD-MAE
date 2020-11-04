library(tidyverse)

1 - pnorm(1)

qnorm(1-0.3)

qexp(0.5, rate=0.5) # rate = 1/mean

x = data.frame(rnorm(10000))


ggplot(data = x) + 
  geom_histogram(bins = 20, aes(x = rnorm.10000., y=..density..)) +
  stat_function(fun = dnorm, size=1.3)

#200 lanzamientos de una moneda
moneda = c('cara', 'cruz')

sample(moneda, 200, rep = TRUE)

#200 lansamientos de un dado
dado = sample(1:6, 200, rep=TRUE)
table(dado)

dado = data.frame(dado)

ggplot(dado) + 
  geom_bar(aes(x = dado))
