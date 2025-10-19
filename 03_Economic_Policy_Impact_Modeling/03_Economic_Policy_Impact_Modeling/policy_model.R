# Economic Policy Impact Simulation
# Objective: Forecast effects of policy changes on economic indicators
# Note: All data are simulated for demonstration purposes only

library(ggplot2)
library(dplyr)

set.seed(123)

# Simulated GDP, employment, and policy shock data
policy_data <- data.frame(
  Year = 2020:2024,
  GDP = c(2000, 2100, 2200, 2300, 2400),       # Simulated GDP values
  Employment = c(95, 96, 97, 97.5, 98),       # Simulated employment rates
  PolicyShock = c(0,1,0,1,0)                  # Simulated policy shocks
)

# Regression: GDP impact of PolicyShock
model <- lm(GDP ~ PolicyShock, data=policy_data)
summary(model)

# Plot GDP trend (simulated)
ggplot(policy_data, aes(x=Year, y=GDP)) +
  geom_line(color='blue', size=1) +
  geom_point(color='red', size=2) +
  labs(title="GDP Trend with Policy Shocks (Simulated Data)", x="Year", y="GDP ($M)")
