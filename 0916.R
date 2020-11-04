library(tidyverse)

lirios <- iris[c(1:5,51:55, 101:105),]
head(lirios)

filter(lirios, Species == 'setosa' | Species == 'virginica')

filter(lirios, Species == 'setosa' & Sepal.Length < 5)

select(lirios, Sepal.Length:Petal.Length)

select(lirios, -Species)

select(lirios, contains('Petal'))

arrange(lirios, Sepal.Length)

arrange(lirios, -Petal.Length)

arrange(lirios, Species, Sepal.Length)

lirios %>%
  select(contains('Petal')) %>%
  filter(Petal.Length > 4) %>%
  arrange(Petal.Length)

lirios_nuevo <- lirios %>%
  select(contains('Petal')) %>%
  mutate(forma = round(Petal.Width/Petal.Length, 2))

head(lirios_nuevo)

lirios %>%
  group_by(Species) %>%
  summarize(mean(Petal.Length))

ggplot(data = iris)

ggplot(data = notas) + geom_point(mapping = aes(x=nota09, y=nota10))

ggplot(data = notas) + geom_point(mapping = aes(x=nota09, y=nota10, col=tipo))

ggplot(data = notas) + geom_point(mapping = aes(x=nota09, y=nota10), col='purple')

ggplot(notas, aes(x = nota09, y = nota10)) +
  geom_point(col = 'blue') +
  geom_smooth(method = 'lm', col = 'black', se = FALSE)
