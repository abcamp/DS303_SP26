install.packages("tidyverse")
install.packages("lme4")

library(tidyverse)
library(lme4)

lung <- read_csv("data/lung.csv") 

ggplot(lung, aes(Exposure, PEFR)) +
  geom_point() + # scatterplot
  geom_smooth(method="lm", se = FALSE) # adds a regression line (linear, no se)

model <- lm(PEFR ~ Exposure, data = lung) # simple linear model
summary(model) # prints model output