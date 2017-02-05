library(ggplot2)
library(data.table)
library(dplyr)
install.packages("readxl")
library(readxl)
library(grid)
path <- "Economist_Assignment_Data.csv"
df <- read.csv(path, header  = T)

pl <- df %>%
  ggplot(aes(x = CPI, y = HDI, color = Region)) + 
  geom_point(size = 3, shape = 1) +
  geom_smooth(aes(group=1), method = "lm", formula = y ~ log(x), se = F, color = "red") +
  theme_economist()

pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")

pl2 <- pl + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)

pl3 <- pl2 +
  scale_x_continuous(name = "Corruption Perception Index, 2011(10=least corrupt)", 
                     limits = c(0, 10.5),
                     breaks = 1:10)
pl4 <- pl3 +
  scale_y_continuous(name = "Human Development Index, 2011 (1=Best)",
                     limits = c(0.2, 1.0))
pl5 <- pl4 + 
  ggtitle(title="Corruption and Human Development")

print(pl5)
