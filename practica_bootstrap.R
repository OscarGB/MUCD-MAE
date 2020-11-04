muestra_original <- c(1,2,3.5,4,7,7.3,8.6,12.4,13.8,18.1)
n <- 10


mediaRecortada40 <- function(v)
{
  mean(sort(v)[3:8])
}

for (R in c(10,100,1000,2000)){
  muestras_bootstrap <- sample(muestra_original, 10*R, rep = TRUE)
  muestras_bootstrap <- matrix(muestras_bootstrap, nrow = n)
  
  medias_bootstrap <- apply(muestras_bootstrap, 2, mediaRecortada40)
  print(sd(medias_bootstrap))
}
