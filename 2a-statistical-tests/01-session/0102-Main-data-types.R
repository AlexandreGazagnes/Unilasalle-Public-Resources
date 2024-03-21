#################################
#   0102 - R Data Types         #
#       TP 01 - 2/4             #
#################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01


# Numerics
############################

# Numeric
x <- 10.5
class(x)


# Integer
x <- 1000
class(x)


# Complex
x <- 9i + 3
class(x)


# Numbers ?
x <- 10.5   # numeric
y <- 10     # integer
z <- 1i     # complex


# Basic Maths operations on numbers
sqrt(16)  # square root

log(10)  # logarithm
log(10, base = 2)  # logarithm with base 2

exp(2) # exponential

sin(pi) # sine
cos(pi) # cosine
tan(pi) # tangent

asin(1) # arcsine
acos(1) # arccosine

factorial(5) # factorial

choose(5, 2) # binomial coefficient

max(5, 10, 15) # max
min(5, 10, 15)  # min

abs(-4.7) # absolute value
ceiling(1.4) # round up
floor(1.4)  # round down

round(1.4) # round to the nearest integer
round(1.556789, 2) # round to 2 decimals


# Is it numeric ?
is.numeric(10) # TRUE


# Strings
############################

# character/string
x <- "R is exciting"
class(x)


# Strings without the 'cat' function
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."
str # print the value of str


# strings with the 'cat' function
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."
cat(str)


# nb of chars
str <- "Hello World!"
nchar(str)


# grep => find in a string
str <- "Hello World!"
grepl("H", str)
grepl("Hello", str)
grepl("X", str) 


# Boolean
############################

# logical/boolean
x <- TRUE
x = FALSE
class(x) 


# Please note that 
TRUE + TRUE # is 2
TRUE + FALSE # is 1
FALSE + FALSE # is 0
TRUE * TRUE # is 1
TRUE * FALSE # is 0
FALSE * FALSE # is 0
# Why ? 


# Logical operators
10 > 9    # TRUE because 10 is greater than 9
10 >= 9   # TRUE because 10 is greater than 9
10 == 9   # FALSE because 10 is not equal to 9
10 < 9    # FALSE because 10 is greater than 9
10 <= 9   # FALSE because 10 is greater than 9
10 !=9     # TRUE because 10 is not equal to 9


# of course 
ans = 10 > 9
class(ans) # bool ? 
print(ans)


# and and or
(10 > 9) & (10 > 9)  # TRUE because 10 is greater than 9 and 10 is greater than 9
(10 > 9) & (10 < 9)  # FALSE because 10 is greater than 9 but 10 is not greater than 9
(10 > 9) | (10 < 9)  # TRUE because 10 is greater than 9 and 10 is not greater than 9
!(10 > 9)            # FALSE because 10 is greater than 9
!(10 < 9)            # TRUE because 10 is not greater than 9


# Fun fact
pi == 3.14159265
round(pi, 2) == 3.14


# NULL, NA and NAN
############################

# in R Null is a special value that means "no value"
x <- NULL
class(x)


# NA is used to represent missing values in a dataset
x <- NA
class(x)


# Inf
x <- 1000/0
class(x)


# NaN
x <- 0/0
class(x)


# Ranges
############################

range = 1:10
range
class(range)


# The 'in' usage
############################
3 %in% 1:10
100 %in% 1:99

# BUT : 
100 %in% 1:100