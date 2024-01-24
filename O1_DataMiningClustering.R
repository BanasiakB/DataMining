library(factoextra)
library(cluster)
library(devtools)
library(dplyr)

data <- read.csv("customer-churn.csv")
data <- subset(data, select = -c(customerID, TotalCharges))
data <- data[!duplicated(data), ]

data <- data %>%
  mutate(across(where(is.character), as.factor))

set.seed(123)

# Extract numeric columns
numeric_columns <- data %>%
  select_if(is.numeric)

# Scale numeric columns
scaled_numeric_columns <- scale(numeric_columns)

if (any(is.na(scaled_data))) {
  scaled_data <- na.omit(scaled_data)  # Remove rows with missing values
}




