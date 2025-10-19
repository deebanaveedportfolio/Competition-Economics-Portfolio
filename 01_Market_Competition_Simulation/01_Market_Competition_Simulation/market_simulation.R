# Market Competition Simulation
# Author: Deeba Naveed
# Objective: Simulate oligopolistic markets and analyze competitive effects
# Note: All data are simulated for demonstration purposes only

library(ggplot2)
library(dplyr)

set.seed(123)

# Simulate market data for 5 firms
n_firms <- 5
market_data <- data.frame(
  Firm = paste0("Firm", 1:n_firms),
  Price = runif(n_firms, 10, 50),        # Simulated prices
  Quantity = runif(n_firms, 100, 500)    # Simulated quantities
)

# Compute revenue and market share
market_data <- market_data %>%
  mutate(Revenue = Price * Quantity,
         MarketShare = Revenue / sum(Revenue))

# Regression: Price vs Quantity (simulated data)
model <- lm(Quantity ~ Price, data = market_data)
summary(model)

# Plot simulated market shares
ggplot(market_data, aes(x = Firm, y = MarketShare)) +
  geom_bar(stat="identity", fill="steelblue") +
  ylim(0,1) +
  labs(title="Market Share by Firm (Simulated Data)", y="Market Share", x="Firm")
