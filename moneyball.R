#
install.packages("KernelKnn")
library(KernelKnn)
df.housing <- Boston
library(ggthemes)
library(ggplot2)
library(dplyr)
pl.scatter <- df.housing %>%
  ggplot(aes(x = rm, y = medv)) + 
  geom_point(color = "red", alpha = 0.5) +
  theme_economist() + 
  geom_smooth(model = "lm", color = "blue")
print(pl.scatter)
