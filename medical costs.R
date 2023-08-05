knitr::opts_chunk$set(echo = TRUE)
install.packages("shiny")
library(ggplot2)  # Load necessary libraries
library(dplyr)

# Load the data
df <- read.csv('insurance.csv', header=TRUE)

# Explore the data
num_cols <- unlist(lapply(df, is.numeric))  
plot(df[, num_cols])  # You should provide actual plot commands here

# Calculate correlations
correlation_matrix <- round(cor(df[, num_cols]), 2)
print(correlation_matrix)

# Create box plots
ggplot(df, aes(x = smoker, y = charges)) +
  geom_boxplot() +
  labs(title = "Charges by Smoker Status")

ggplot(df, aes(x = sex, y = charges)) +
  geom_boxplot() +
  labs(title = "Charges by Sex")

ggplot(df, aes(x = region, y = charges)) +
  geom_boxplot() +
  labs(title = "Charges by Region")

# Build the linear regression model
model1 <- lm(charges ~. , data = df)

# Print the model summary
summary(model1)

