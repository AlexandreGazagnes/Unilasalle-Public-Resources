#################################
#     TP 01 - R Basics          #
#        1/4                    #
#################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01
# Based on https://www.w3schools.com/r/default.asp


# About 
#####################################


info = "
R is a programming language for statistical computing and data visualization. It has been adopted in the fields of data mining, bioinformatics, and data analysis.

The core R language is augmented by a large number of extension packages, containing reusable code, documentation, and sample data.

R software is open-source and free software. It is licensed by the GNU Project and available under the GNU General Public License. It is written primarily in C, Fortran, and R itself. Precompiled executables are provided for various operating systems.

As an interpreted language, R has a native command line interface. Moreover, multiple third-party graphical user interfaces are available, such as RStudio—an integrated development environment—and Jupyter—a notebook interface. "


# Print "Hello World!"
#####################################

# Your 1st line 
print("Hello World!") 


# Using a variable
txt <- "Hello World!"
print(txt)

# '<-' is the same than '=' 
txt = "Hello World!"
print(txt)

# Concatenate 2 strings
text1 <- "R is"
text1 = "R is"
text2 <- "awesome"
paste(text1, text2) 


# Simple Maths operations
#####################################

3+3 # Addition
3-3 # Subtraction
3*3 # Multiplication
3/3 # Division
3^3 # Exponentiation
3%%3 # Modulus / remainder
3%/%3 # Integer division

# A very basic error
num <- 5
num = 5
text <- "Some text"
num + text 
# Not possible to cat text and num

# Variable names
#####################################

# Legal variable names:
myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"


# Illegal variable names:
# 2myvar <- "John"
# my-var <- "John"
# my var <- "John"
# _my_var <- "John"
# my_v@ar <- "John"
# TRUE <- "John"
