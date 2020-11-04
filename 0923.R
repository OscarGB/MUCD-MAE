library(tidyverse)

# Parámetros --------------------------------------------------------------

theta <- 10  # valor verdadero del parámetro
n <- 20   # tamaño muestral
m <- 1000 # número de muestras

# Genera los datos --------------------------------------------------------


set.seed(1234)   # para reproducir los resultados
muestras <- matrix(runif(n*m, 0, theta), n) # n filas m columnas

# Calcula estimadores ----------------------------------------------------- 

emv <- apply(muestras, 2, max)
momentos <- 2*apply(muestras, 2, mean)
metodo <- gl(2, m, labels = c('emv', 'momentos'))
df <- data.frame(estimadores = c(emv, momentos), metodo = metodo)

# Gráficos ----------------------------------------------------------------

ggplot(df) +
  geom_boxplot(aes(x = metodo, y = estimadores)) +
  geom_hline(yintercept = theta, col = 'red', size = 1.1, linetype = 2)

