########################################
#  0601 - About RICA Data Set          #
#        TP 06 - 1/2                   #
########################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01


## Context
####################################

# You will have:

#   * To use a real dataset from the RICA Data Base.
#   * Perform a "first Tour" of the dataset.
#   * Understand the variables, the data types, the missing values, the distribution of the variables, etc.
#   * Answer to the question "What is the dataset about?".
#   * Answer to the question "What are the main characteristics of the dataset?".
#   * Answer to the question "What are the main challenges of the dataset?".
#   * Think about what kind of analysis you could do with this dataset, what kind of questions you could answer, etc.
#   * Act as a data analyst who is able to find a good problematic, define some good questions and propose a good analysis plan.



# What will be evaluated:

#   * Ability to use R
#   * Visualization skills
#   * Descriptive, Inferential Statistcs
#   * Good usage of statistical tests
#   * The quality of the cleaning, the selection of the variables, the analysis, and the interpretation of the results.
#   * The quality of the code.
#   * The quality of the analysis.


# Expected deliverables:

#   * The R file or R notebook should contain the code and the comments.
#   * A Powerpoint presentation with the main results of the analysis and the main insights of the dataset.
#   * Oral presentation of the results and insights of the dataset.


# Small Radom Tips:

#   * Don't worry about your R skills. -- I n t e r n e t -- is your f* best friend ! 
#   * Don't panic if you don't understand everything in the dataset. The goal is to get a first idea of what the dataset is about and what you could do with it.
#   * Don't panic if you don't know how to do something. The goal is to try to do it and to learn from it.
#   * Don't bother about the quality of the code. The goal is to get a first idea of what the dataset is about and what you could do with it.
#   * Do not forget to comment your code and to explain your choices.


## About External Libraries
####################################


# Many useful R function come in packages, free libraries of code written by R's active user community. To install an R package, open an R session and type at the command line
install.packages("<the package's name>")

# R will download the package from CRAN, so you'll need to be connected to the internet. Once you have a package installed, you can make its contents available to use in your current R session by running
library("<the package's name>")

# You can use any external libraries you want.

# However, do not hesitate to look at the following libraries:
#       * dplyr:            It provides a set of verbs like filter(), mutate(), arrange(), and more, making data manipulation tasks straightforward and readable.
#       *  ggplot2:         ggplot2 is the go-to package for data visualization in R.
#       *  tidyr:           Complementing dplyr, tidyr helps in tidying data. It offers functions like gather(), spread(), pivot_longer(), and pivot_wider() to transform datasets into a format suitable for analysis.
#       *  tidymodels:      tidymodels is a collection of packages for modeling and statistical analysis that share the tidyverse philosophy. 
#       *  naniar:          Specialized for missing data, naniar provides additional structures and functions for dealing with NA values, going beyond the base R functionalities. It offers a way to visualize missing values and perform imputations.
#       *  DataExplorer:    It can generate data profiling reports, plot distributions, and much more, helping in understanding the dataset before diving deep into analysis.


## Global Methodology
####################################

# 1. Load the dataset
# 2. Perform a "first Tour" of the dataset
# 3. Understand the variables, the data types, the missing values, the distribution of the variables, etc.
# 4. Answer to the question "What is the dataset about?", "What are the main characteristics of the dataset?",  "What are the main challenges of the dataset?" etc
# 5. Think about what kind of analysis you could do with this dataset, what kind of questions you could answer, etc.
# 6. Find a good problematic, define some good questions and propose a good analysis plan.
# 7. Find in the dataset the most important variables regarding the questions or problems you have identified.
# 8. Clean, select the variables, analyze, and interpret the results.
# 9.Take a step back and ask yourself if the dataset allows you to answer these questions, if the data is aligned with your problem and of sufficient quality.
#   If yes, continue the analysis
# 10. Take a step back, what do we see, what do we learn? Are the results consistent?
# 11. Go to 1. or 4. or 5. or 8.
#   (and yes, data analysis is never linear work but always iterative work with feedback loops ;) )


## 1st, 2nd ... and Last guideline you should always keep in mind
######################################################################################

# Don't do visualizations for the sake of doing visualizations, or tests for the sake of doing tests! Everything must have a meaning, a goal, an objective, aligned with your problem

# Don't do visualizations for the sake of doing visualizations, or tests for the sake of doing tests! Everything must have a meaning, a goal, an objective, aligned with your problem

# Don't do visualizations for the sake of doing visualizations, or tests for the sake of doing tests! Everything must have a meaning, a goal, an objective, aligned with your problem


## Data 
###########################################


# Orgiginal Dataset
# https://agreste.agriculture.gouv.fr/agreste-web/methodon/S-RICA/methodon


# We do need to spend some time to understand the dataset.
# We need to understand the variables, the data types, the missing values, the distribution of the variables, etc.


# The dataset is called "RICA" and is available at the following link:
url = "https://gist.githubusercontent.com/AlexandreGazagnes/579fc858dcca21b2f6b78aedd47c2f43/raw/8b70154652a32306d96653b5d3c8116bdf2df3a2/rica_light.csv"


# You can load the file : 


## First Tour of the Dataset
###########################################

# Let's have a look at the dataset: 

# The tail of the dataset

# Lets take 10 random rows of the dataset

# Let's have a look at the structure of the dataset

# How many numeric variables do we have?

# How many character variables do we have?

# Let's have a look at the summary of the dataset


# Let's compute the number of missing values


# Let's compute the number of missing values by variable


# Let's create a selection of the variables


# Let's have a look at the structure of the selection

# What is the correlation between the variables?




## What is the dataset about?
###########################################

# Your answer here


# What kind of analysis could you do with this dataset?


# What kind of questions could you answer with this dataset?


# Is there any variable that you think is particularly interesting? Why?


# Regarding one, two of three relevant questions or problems that you could solve with this dataset, what would be your approach to solve them?


# What are the most important variables in the dataset regarding the questions or problems you have identified?
