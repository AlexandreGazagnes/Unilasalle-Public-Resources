#################################
#   0801 - Problems and code    #
#       TP08 - 1/1              #
#################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01



## Questions
#########################################


# 1. Optimization of Resource Allocation

# This problem focuses on ensuring that resources (such as labor, capital, and inputs like seeds and fertilizers) are utilized in the most efficient manner possible to maximize yield and financial outcomes.
# Questions to Explore

#   Write your questions here
#   Write your questions here
#   Write your questions here
#   Write your questions here

# 2. Impact of Farm Practices on Sustainability

# Analyzing the long-term sustainability of different farming practices, including the impact on soil health, biodiversity, and economic viability.
# Questions to Explore:

#   Write your questions here
#   Write your questions here
#   Write your questions here
#   Write your questions here

# 3. Efficacy of Financial Strategies in Farming

# Evaluating the financial health and strategies of farms, including revenue generation, cost management, and investment in technology or infrastructure.
# Questions to Explore:

#   Write your questions here
#   Write your questions here
#   Write your questions here
#   Write your questions here




## Usefull manipulations
#########################################


# Load data from a CSV file


# For Excel files, you might use readxl package
# install.packages("readxl")
# library(readxl)
# data <- read_excel("path_to_your_file.xlsx")



# Select columns by name


# Or to exclude columns


# Slice rows by position


# Or using filter for conditional slicing


# Summarize missing values


# Or for a more comprehensive overview


# Compute correlation matrix for numerical columns


# Visualizing the correlation matrix can also be very informative


# To get a quick overview of all data types


# Or to get just the data types in a more concise format


# Assuming 'data' is your dataframe and it's already known which columns are categorical
# Replace 'categorical_columns' with your actual categorical column names


# Assuming 'data' is your dataframe and it's already known which columns are categorical
# Replace 'categorical_columns' with your actual categorical column names


# Assuming 'data' is your dataframe and it's already known which columns are categorical
# Replace 'categorical_columns' with your actual categorical column names


# For a single categorical variable


# To do this for every categorical variable, you can loop or use sapply


# Basic box plot


# Adding titles and improving aesthetics


# Basic pie chart with base R


# For more advanced pie charts, consider using ggplot2 or plotly for interactivity


# Performing a t-test as an example


# For ANOVA, chi-squared tests, etc., R provides different functions like aov(), chisq.test()



# Simple example of imputing missing values


# Counting unique values


# Getting a quick overview of the data structure, including types


# Getting the structure of the dataset


# Compute mean


# Compute minimum


# Compute maximum


# Compute quantiles


# Summary statistics for a specific column


# Summary statistics for the entire dataframe


# Shapiro-Wilk normality test


# Print the results


# Install and load GGally for pair plots
# install.packages("GGally")


# Create a pair plot for the dataset


# Count distribution between two categorical variables


# Chi-Square test of independence


# Print the test result


# Mosaic plot with base R


# Stacked bar plot


# Assuming your dataframe is named 'data', and it has columns 'age', 'financial_result', and 'sex'
# where 'sex' is a factor with levels 'H' (for male) and 'F' (for female)


# Load the ggplot2 package

# Assuming 'data' is your dataframe, and it contains columns for 'age', 'region', 'number_of_farms', and 'category_of_production'
# The data should be aggregated appropriately to reflect the number of farms for each age, region, and category_of_production
