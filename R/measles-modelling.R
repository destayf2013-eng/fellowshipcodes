WHO_indicators<-read.csv("data/WHO_indicators.csv")
summary(WHO_indicators)

install.packages("dplyr")
install.packages("ggplot2")

library(dplyr)
library(ggplot2)
WHO_indicators <- read.csv("life_expectancy.csv", stringsAsFactors = FALSE)
setwd("C:/Users/desta/Desktop/SACEMA -Policy -Modelling -Fellowship/Fellowship-project/SACEMA-Policy-Modelling-Fellowship/SACEMA-Policy-Modelling-Fellowship/data")
WHO_indicators <- read.csv("WHO_indicators.csv")
both_sexes <- WHO_indicators %>%
  filter(DIM_1_CODE == "SEX_BTSX")
Filter data to “both sexes combined
both_sexes <- WHO_indicators %>%
  filter(DIM_1_CODE == "SEX_BTSX")
colnames(WHO_indicators)
WHO_indicators <- read.csv("WHO_indicators.csv", stringsAsFactors = FALSE)
print(colnames(WHO_indicators))
both_sexes <- WHO_indicators %>%
  filter(DIM_1_CODE == "SEX_BTSX")
head(both_sexes)
Handle missing values properly
sum(is.na(both_sexes))
colSums(is.na(both_sexes))
# Calculate average life expectancy
colnames(both_sexes)
head(both_sexes)
names(both_sexes)
str(both_sexes)WHO_indicators$Numeric <- 0  # fills all 2274 rows with 0
