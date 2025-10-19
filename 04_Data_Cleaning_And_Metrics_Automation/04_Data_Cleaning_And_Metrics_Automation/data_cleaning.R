# Data Cleaning and KPI Dashboard Template
# Objective: Automate dataset validation and metric calculation
# Note: All data are simulated for demonstration purposes only

library(dplyr)

set.seed(123)

# Simulate raw dataset
raw_data <- data.frame(
  ID = 1:50,
  Value = sample(c(NA, 10:100), 50, replace=TRUE)  # Random values with some missing data
)

# Data cleaning steps
clean_data <- raw_data %>%
  filter(!is.na(Value)) %>%
  mutate(Flag =
