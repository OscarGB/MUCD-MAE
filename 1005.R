set.seed(100)
library(tidyverse)

# Parámetros
R <- 1000
n <- 10
theta <- 9.17

# Generamos los datos
muestra_original <- c(1, 2, 3.5, 4, 7, 7.3, 8.6, 12.4, 13.8, 18.1)
varianza_original <- var(muestra_original)

# Generamos las remuestras (matriz n x R, cada columna una remuestra)
muestras_bootstrap <- sample(muestra_original, n*R, rep = TRUE)
muestras_bootstrap <- matrix(muestras_bootstrap, nrow = n)

# Medianas de las remuestras
varianzas_bootstrap <- apply(muestras_bootstrap, 2, var)

# Histograma de las medianas bootstrap
df <- data.frame(varianzas_bootstrap = varianzas_bootstrap)
ggplot(df) +
  geom_histogram(aes(x = varianzas_bootstrap, y = ..density..),
                 bins = 10, fill = 'olivedrab4', col = 'black') +
  geom_vline(xintercept = varianza_original, size = 1.1)

sd_varianza <- sd(varianzas_bootstrap)
sd_varianza

# Error típico sabiendo que es una normal
sqrt(2*varianza_original^2 / (n-1))
