#environment initialization
rm(list = ls())
#remove all charts
graphics.off()

#mpg dataset
library(ggplot2)
library(ggthemes)
library(dplyr)
head(mpg)

#histogram of hwy mpg values:
pl.mgp.1 <- mpg %>%
  ggplot(aes(x = hwy)) + geom_histogram(fill = "red", alpha = 0.5, bins = 20)

print(pl.mgp.1)

#barplot per oem, filled by cyl count:
pl.mgp.2 <- mpg %>%
  ggplot(aes(x = manufacturer)) + 
  geom_bar(aes(fill = factor(cyl)), show.legend = T) +
  theme_economist()

print(pl.mgp.2)

#txhousing data
head(txhousing)

#scatterplot of volume vs. sales
pl.txh.1 <- txhousing %>%
  ggplotly(aes(x = sales, y = volume)) + 
  geom_point(color = "blue", alpha = 0.3) + 
  geom_smooth(model = lm, color = "red") +
  theme_economist_white()
print(pl.txh.1)
