
install.packages("dplyr")
install.packages("ggplot2")
install.packages("janitor")

library(dplyr)
library(ggplot2)
library(janitor)

setwd("C:/Users/desta/Desktop/SACEMA_Fellowship/fellowshipcodes")
WHO_indicators <- read.csv("WHO_indicators.csv")
names(WHO_indicators)
WHO_clean <- WHO_indicators %>% clean_names()
print(names(WHO_clean))
result <- WHO_clean %>%
  filter(whosis_code == "WHOSIS_0001",
         dim_1_code == "SEX_BTSX") %>%
  summarize(average_life_expectancy = mean(value, na.rm = TRUE))

print(result)
colnames(WHO_indicators)
colnames(both_sexes)
sapply(both_sexes, class)

WHO_indicators <- names(both_sexes)[
  sapply(both_sexes, function(x) is.character(x) || is.numeric(x))
]

WHO_indicators
value_col <- names(both_sexes)[
  sapply(both_sexes, is.numeric)
]
value_col
char_cols <- names(both_sexes)[sapply(both_sexes, is.character)]
char_cols
if("OBS_VALUE" %in% colnames(both_sexes)) {
  both_sexes$OBS_VALUE <- as.numeric(as.character(both_sexes$OBS_VALUE))
  mean_life_expectancy <- mean(both_sexes$OBS_VALUE, na.rm = TRUE)
  print(mean_life_expectancy)

} else {
  print("Error: The column 'OBS_VALUE' was not found in your data.")
  print("Available columns are:")
  print(colnames(both_sexes))
}
str(both_sexes)
library(dplyr)
both_sexes_le <- WHO_indicators %>%
  filter(WHOSIS_CODE == "WHOSIS_0001",
         DIM_1_CODE == "SEX_BTSX")
average_le <- both_sexes_le %>%
  summarize(
    avg_life_expectancy = mean(as.numeric(OBS_VALUE), na.rm = TRUE)
  )
print(average_le)
View(both_sexes_le)
str(average_le)
colnames(WHO_indicators)
dplyr::glimpse(WHO_indicators)
names(WHO_indicators)
WHO_indicators <- read.csv("WHO_indicators.csv")

