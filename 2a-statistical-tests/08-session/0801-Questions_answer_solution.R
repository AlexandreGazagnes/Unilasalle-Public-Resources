#################################
#   0801 - Questions and Ans    #
#       TP08 - 1/1              #
#################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01



## Questions
#########################################


# 1. Optimization of Resource Allocation

# This problem focuses on ensuring that resources (such as labor, capital, and inputs like seeds and fertilizers) are utilized in the most efficient manner possible to maximize yield and financial outcomes.
# Questions to Explore:

#     What is the average yield per hectare for each crop type, and how does it correlate with the number of employees and financial results? (Open)
#     How does the farmer's age and experience (approximated by age) affect resource allocation and exploitation type success? (Open)
#     Is there a significant difference in financial outcomes between regions for similar exploitation types? If so, what are the contributing factors? (Open)
#     Which exploitation type has shown the most improvement in financial results over the past five years? (Closed)
#     How does the gender of the farmer influence the choice of exploitation type and the financial outcomes associated with it? (Open)

# 2. Impact of Farm Practices on Sustainability

# Analyzing the long-term sustainability of different farming practices, including the impact on soil health, biodiversity, and economic viability.
# Questions to Explore:

#     Which exploitation types are associated with the best financial sustainability over time, considering fluctuating market prices? (Open)
#     How do farming practices vary by region, and what is their impact on local biodiversity and soil health? (Open)
#     What are the trends in adopting sustainable farming practices among different age groups and genders of farmers? (Open)
#     Is there a correlation between the number of employees and the adoption of sustainable farming practices? (Closed)
#     Which regions have shown improvement in sustainability metrics, and what practices contributed to this? (Open)

# 3. Efficacy of Financial Strategies in Farming

# Evaluating the financial health and strategies of farms, including revenue generation, cost management, and investment in technology or infrastructure.
# Questions to Explore:

#     What are the common financial strategies employed by the most successful farms, in terms of net income? (Open)
#     How does investment in technology correlate with financial results across different exploitation types? (Open)
#     What patterns exist in the financial struggles of farms across different regions, and what external factors (e.g., climate, market access) contribute to these patterns? (Open)
#     Are younger farmers more likely to adopt innovative financial strategies or diversification efforts than older farmers? (Closed)
#     What impact does the scale of operation (measured by the number of employees) have on profitability and financial risk? (Open)




## Usefull manipulations


# Load data from a CSV file
data <- read.csv("path_to_your_file.csv")

# For Excel files, you might use readxl package
# install.packages("readxl")
# library(readxl)
# data <- read_excel("path_to_your_file.xlsx")



install.packages("dplyr")
library(dplyr)



# Select columns by name
selected_data <- select(data, column1, column2)


# Or to exclude columns
selected_data <- select(data, -column_to_exclude)


# Slice rows by position
sliced_data <- slice(data, 1:10)

# Or using filter for conditional slicing
filtered_data <- filter(data, column1 == "value")


# Summarize missing values
sum(is.na(data$column))

# Or for a more comprehensive overview
sapply(data, function(x) sum(is.na(x)))


# Compute correlation matrix for numerical columns
correlation_matrix <- cor(data[,sapply(data, is.numeric)])


if(!require('corrplot')) {
  install.packages('corrplot')
  library('corrplot')
}


# Visualizing the correlation matrix can also be very informative
library(corrplot)
corrplot(correlation_matrix, method = "circle")



# To get a quick overview of all data types
str(data)

# Or to get just the data types in a more concise format
data_types <- sapply(data, class)
print(data_types)


# Assuming 'data' is your dataframe and it's already known which columns are categorical
# Replace 'categorical_columns' with your actual categorical column names
number_of_uniques <- sapply(data[categorical_columns], function(x) length(unique(x)))
print(number_of_uniques)

# Assuming 'data' is your dataframe and it's already known which columns are categorical
# Replace 'categorical_columns' with your actual categorical column names
number_of_uniques <- sapply(data[categorical_columns], function(x) length(unique(x)))
print(number_of_uniques)


# Assuming 'data' is your dataframe and it's already known which columns are categorical
# Replace 'categorical_columns' with your actual categorical column names
number_of_uniques <- sapply(data[categorical_columns], function(x) length(unique(x)))
print(number_of_uniques)


categorical_columns <- sapply(data, is.factor) | sapply(data, is.character)
number_of_uniques <- sapply(data[categorical_columns], function(x) length(unique(x)))
print(number_of_uniques)



# For a single categorical variable
value_counts <- table(data$category_column)
print(value_counts)

# To do this for every categorical variable, you can loop or use sapply
value_counts_all <- lapply(data[categorical_columns], table)
print(value_counts_all)



library(ggplot2)
# Basic box plot
ggplot(data, aes(x=factor_column, y=numeric_column)) + geom_boxplot()

# Adding titles and improving aesthetics
ggplot(data, aes(x=factor_column, y=numeric_column)) +
  geom_boxplot() +
  ggtitle("Box Plot Title") +
  xlab("X-axis Label") +
  ylab("Y-axis Label")


# Basic pie chart with base R
pie(table(data$factor_column))

# For more advanced pie charts, consider using ggplot2 or plotly for interactivity


# Performing a t-test as an example
t_test_result <- t.test(data$numeric_column1, data$numeric_column2)

# For ANOVA, chi-squared tests, etc., R provides different functions like aov(), chisq.test()



library(mice)
# Simple example of imputing missing values
imputed_data <- mice(data, m=1, method='pmm')$data


# Counting unique values
sapply(data, function(x) length(unique(x)))

# Getting a quick overview of the data structure, including types
str(data)


# Getting the structure of the dataset
str(data)



# Compute mean
mean_value <- mean(data$column_name, na.rm = TRUE)


# Compute minimum
min_value <- min(data$column_name, na.rm = TRUE)

# Compute maximum
max_value <- max(data$column_name, na.rm = TRUE)



# Compute quantiles
quantiles <- quantile(data$column_name, probs = c(0.25, 0.5, 0.75), na.rm = TRUE)


# Summary statistics for a specific column
summary_stats <- summary(data$column_name)

# Summary statistics for the entire dataframe
summary_stats_df <- summary(data)



# Shapiro-Wilk normality test
shapiro_test_result <- shapiro.test(data$column_name)

# Print the results
print(shapiro_test_result)



# # Install and load GGally for pair plots
# # install.packages("GGally")
# library(GGally)

# # Create a pair plot for the dataset
# ggpairs(data)



# Count distribution between two categorical variables
count_distribution <- table(data$category1, data$category2)
print(count_distribution)


# Chi-Square test of independence
chi_square_test <- chisq.test(data$category1, data$category2)

# Print the test result
print(chi_square_test)


# Mosaic plot with base R
# mosaicplot(~ category1 + category2, data = data, main = "Mosaic Plot of Two Categories")




library(ggplot2)
# Stacked bar plot
ggplot(data, aes(x=category1, fill=category2)) +
  geom_bar(position="stack") +
  ylab("Count") +
  xlab("Category 1") +
  ggtitle("Stacked Bar Plot of Two Categorical Variables")




# Load the ggplot2 package
library(ggplot2)

# Assuming your dataframe is named 'data', and it has columns 'age', 'financial_result', and 'sex'
# where 'sex' is a factor with levels 'H' (for male) and 'F' (for female)
ggplot(data, aes(x=age, y=financial_result, color=sex)) + 
  geom_point() +  # This adds the scatter plot points
  labs(x = "Age", y = "Financial Result", color = "Sex") + 
  theme_minimal() +  # This changes the theme to a minimalistic design
  ggtitle("Scatter Plot of Age vs Financial Result by Sex")



# Load the ggplot2 package
library(ggplot2)

# Assuming 'data' is your dataframe, and it contains columns for 'age', 'region', 'number_of_farms', and 'category_of_production'
# The data should be aggregated appropriately to reflect the number of farms for each age, region, and category_of_production

w(data, aes(x = as.factor(age), y = number_of_farms, fill = category_of_production)) +
  geom_bar(stat = "identity", position = "stack") + 
  facet_wrap(~region, scales = "free_x") +
  labs(x = "Age", y = "Number of Farms", fill = "Category of Production") +
  theme_minimal() +
  ggtitle("Stacked Bar Plot of Farms by Age and Category of Production Across Regions") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

    