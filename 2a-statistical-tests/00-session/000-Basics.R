# written by Alexandre Gazagnes
# based on https://www.w3schools.com/r/default.asp


#################################
#  R BASICS
#################################

# Print "Hello World!"
#####################################

# Your 1st line 
print("Hello World!") 


# Using a variable
txt <- "Hello World!"
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
2myvar <- "John"
my-var <- "John"
my var <- "John"
_my_var <- "John"
my_v@ar <- "John"
TRUE <- "John"

