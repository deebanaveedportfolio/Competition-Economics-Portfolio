# Search Relevance Impact Analysis
# Objective: Evaluate ranking impact on engagement
# Note: All data are simulated for demonstration purposes only

library(ggplot2)
library(dplyr)

set.seed(123)

# Simulate search ranking data
search_data <- data.frame(
  QueryID = 1:100,
  RankChange = sample(-3:3, 100, replace = TRUE),     # Simulated rank changes
  EngagementScore = runif(100, 0, 1)                  # Simulated engagement scores
)

# Regression: Engagement vs RankChange
model <- lm(EngagementScore ~ RankChange, data = search_data)
summary(model)

# Visualization of simulated data
ggplot(search_data, aes(x = RankChange, y = EngagementScore)) +
  geom_point(color='darkred') +
  geom_smooth(method='lm', se=FALSE, color='black') +
  labs(title="Engagement vs Ranking Changes (Simulated Data)", x="Rank Change", y="Engagement Score")
