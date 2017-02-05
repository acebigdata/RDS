rm(list = ls())
library(ggplot2)
install.packages("ggplot2movies")
library(ggplot2movies)
install.packages("hexbin")
library(hexbin)

df.mv <- movies

pl.mv <- df.mv %>%
  ggplot(aes(x = year, y = rating)) + geom_density2d() +
  scale_fill_gradient(high = "red", low = "blue")

print(pl.mv)
