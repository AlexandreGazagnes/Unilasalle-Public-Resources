########################################
#  0601 - About RICA Data Set          #
#        TP 06 - 1/1                   #
########################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01


## Context
####################################

# You will have:

#   * To use a real dataset from the RICA Data Base.
#   * Perform a "first tour" of the dataset.
#   * Understand the variables, the data types, the missing values, the distribution of the variables, etc.
#   * Answer to the question "What is the dataset about?", "What are the main characteristics of the dataset?" or "What are the main challenges of the dataset?".
#   * Think about what kind of analysis you could do with this dataset, what kind of questions you could answer, etc.
#   * Act as a data analyst who is able to find a good problem to solve, define some good questions and propose a good analysis plan.


# What will be evaluated on :

#   * Your ability to use R
#   * Your visualization skills
#   * Your descriptive, Inferential Statistcs skills
#   * The good usage of statistical tests
#   * The quality of the cleaning, the selection of the variables, the analysis, and the interpretation of the results.
#   * The quality of the code and your comments


#  You will have succeeded if :

#   * You teach us something unexpected or interesting
#   * You have taken a rigorous and methodical approach to data selection, cleaning and analysis (both viz, tests and insights).


# Teams :

#   * You will have to work as teams of 3 students


# Expected deliverables:

#   * The R file or R notebook should contain the code and the comments.
#   * A Powerpoint presentation with the main results of the analysis and the main insights of the dataset.
#   * Oral presentation of the results and insights of the dataset.


# Oral Presentation:

#   * 20 minutes of presentation (TO BE CONFIRMED)
#   * Powerpoint prez (12 / 20 slides )


# Small Random Tips:

#   * Don't worry about your R skills. -- I n t e r n e t -- is your best friend ! 
#   * Don't panic if you don't understand everything in the dataset. The goal is to get a first idea of what the dataset is about and what you could do with it.
#   * Don't panic if you don't know how to do something. The goal is to try to do it and to learn from it.
#   * Don't worry about the quality of the code. The goal is to get a first idea of what the dataset is about and what you could do with it.
#   * Do not forget to comment your code and to explain your choices.


# In case of problem with the code : 

#   * Take some time to read the previous R notebooks avialable at https://github.com/AlexandreGazagnes/Unilassalle-Public-Ressources
#   * Copy paste your code or your error message on google to find a solution
#   * Use https://stackoverflow.com/ wich is a great website to find solutions to your problems
#   * Use the R documentation available at https://www.rdocumentation.org/
#   * Do not hesitate to ask your teammates for help
#   * Do not hesitate to use ChatGPT -- BUT -- be very careful, the answers are not always correct ! 


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


## About Methodology
####################################


# Find bellow a methodology that you can follow to analyze a dataset:

# 1. Download and load the dataset (or find new data on the internet)
# 2. Perform a "first Tour" of the dataset
# 3. Understand the variables, the data types, the missing values, the distribution of the variables, etc.
# 4. Answer to the question "What is the dataset about?", "What are the main characteristics of the dataset?",  "What are the main challenges of the dataset?" etc
# 5. Think about what kind of analysis you could do with this dataset, what kind of questions you could answer, etc.
# 6. Find a good problem to solve, define some good questions and propose a good analysis plan.
# 7. Find in the dataset the most important variables regarding the questions or problems you have identified.
# 8. Clean, select the variables, analyze, and interpret the results.
# 9.Take a step back and ask yourself if the dataset allows you to answer these questions, if the data is aligned with your problem and of sufficient quality.
#   If yes, continue the analysis
# 10. Take a step back, what do we see, what do we learn? Are the results consistent?
# 11. Go to 1. or 4. or 5. or 8.
#   (and yes, data analysis is never linear work but always iterative work with feedback loops ;) )


# THE most powerfull guideline you should always keep in mind : 

# Your main problem is not about the code, it is about : 
#   * finding a good problem and a good axis of analysis for the work
#   * selecting relevant columns
#   * cleaning data
#   * producing consistent analyses, complemented by coherent visualizations, aligned with the 
#     right statistical tests.
#   * carring out a coherent analysis that leads to an interesting and well-supported conclusion 


# Mistake to avoid:

# * Not spending enouth time on the first steps of the analysis.
# * Perfoming a not so good selection of the variables
# * Making visualizations for the sake of doing visualizations, or tests for the sake of doing tests! 


## Data 
###########################################

# Orgiginal Dataset
# https://agreste.agriculture.gouv.fr/agreste-web/servicon/I.2/listeTypeServicon/


# The dataset is called "RICA" and is available at the following link:
url = "https://gist.githubusercontent.com/AlexandreGazagnes/579fc858dcca21b2f6b78aedd47c2f43/raw/8b70154652a32306d96653b5d3c8116bdf2df3a2/rica_light.csv"


# You can load the file : 
# Write some code here


## First Tour of the Dataset
###########################################

# Let's have a look at the dataset: 
# Write some code here


# The tail of the dataset
# Write some code here


# Lets take 10 random rows of the dataset
# Write some code here


# Let's have a look at the structure of the dataset
# Write some code here


# How many numeric variables do we have?
# Write some code here


# How many character variables do we have?
# Write some code here


# Let's have a look at the summary of the dataset
# Write some code here


# Let's compute the number of missing values
# Write some code here


# Let's compute the number of missing values by variable
# Write some code here


# Let's create a selection of the variables
# Write some code here

# Let's have a look at the structure of the selection
# Write some code here

# What is the correlation between the variables?
# Write some code here




## What is the dataset about?
###########################################

# Your answer here


# What kind of analysis could you do with this dataset?


# What kind of questions could you answer with this dataset?


# Is there any variable that you think is particularly interesting? Why?


# Regarding one, two of three relevant questions or problems that you could solve with this dataset, what would be your approach to solve them?


# What are the most important variables in the dataset regarding the questions or problems you have identified?
