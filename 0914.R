notas <- read.table('http://verso.mat.uam.es/~joser.berrendero/datos/notas.txt', sep = ' ', dec = ',', header=TRUE)

# A partir de R 4.0.0 la variables carácter no son factores por defecto
notas$tipo <- as.factor(notas$tipo)

head(notas)

mean(notas$nota09)
mean(notas$nota10)

sd(notas$nota09)
sd(notas$nota10)

summary(notas)

hist(notas$nota09)

boxplot(notas$nota09, notas$nota10)

boxplot(notas$nota10 ~ notas$tipo)

plot(notas$nota09, notas$nota10)

cov(notas$nota09, notas$nota10)

cor(notas$nota09, notas$nota10)

curve(cos(x^2), 0, 2 * pi)

integrate(function(x) cos(x^2), 0, pi)

curve(dnorm(x, mean = 3, sd = 1), -1, 7)

x <- rnorm(1000, mean = 3, sd = 1)
hist(x)

suma <- function(x, y){
  resultado <- x+y
  return(resultado)
}

suma(2, 3)

c(1,2,3) + c(2,3)

c(4,5,6)[1]

c(1,2,3)^2

respuesta <- rep(c('si', 'no'), 4)
respuesta = factor(respuesta)
respuesta

matrix(1:3, nrow=2, ncol=3)

m <- matrix(1:4, nrow=2, ncol=3)

m^2

m <- matrix(c(1,2,3,4),2)
m

respuesta <- eigen(m)
respuesta
respuesta$values

x <- 7:9
y <- c('a','b','c')

dataframe <- data.frame(edad = x, nombre = y)
dataframe
dataframe[1]
