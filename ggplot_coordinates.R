rm(list = ls())
graphics.off()

library(ggplot2)
install.packages("ggthemes")
library(ggthemes)

pl.mpg <- 
  mpg %>%
  ggplot(aes(x = displ, y = hwy)) + geom_point()

pl.mpg <- pl.mpg + facet_grid(drv ~ .) + theme_wsj()

print(pl.mpg)
