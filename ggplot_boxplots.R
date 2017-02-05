#initialize the environment
rm(list = ls())
graphics.off()

install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
df.cars <- mtcars

pl.cars <- df.cars %>%
  ggplot(aes(x = factor(cyl), y = mpg)) + geom_boxplot(aes(fill = factor(cyl)))

print(pl.cars)
