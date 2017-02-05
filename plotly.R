install.packages("plotly")
library(plotly)
library(ggplot2)

pl <- mtcars %>%
  ggplot(aes(x = mpg, y = wt)) + geom_point()

gpl <- ggplotly(pl)

print(gpl)