#################################
# 0103 - R Control Statements   #
#     TP 01 - 3/4               #
#################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01


# If Statement
#########################

# Basic if / else 
a <- 200
b <- 33

if (b > a) { # if b is greater than a
  print ("b is greater than a") 
} else { # if b is not greater than a
  print("b is not greater than a")
} 


# Nested if else 
x <- 41
if (x > 10) {
  print("Above ten")
  if (x > 20) { # and if inside the first if
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
} 


# Using if + and
a <- 200
b <- 33
c <- 500

if (a > b & c > a) { # both conditions are true
  print("Both conditions are true")
} 


# Using if + or 
a <- 200
b <- 33
c <- 500

if (a > b | a > c) { # at least one condition is true
  print("At least one of the conditions is true")
}


# Using in operator
fruits <- c("apple", "banana", "cherry")
"banana" %in% fruits # TRUE


# While loops
#########################

# Basic while
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1 # increment
} 


# While + break
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break # stop the loop
  }
} 


# While + next
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next # skip the end of loop
  }
  print(i)
} 


# For loops
#########################

# Basic for
fruits <- list("apple", "banana", "cherry")

for (x in fruits) { # for each item in the list
  print(x)
} 


# Using for + range
for (x in 1:10) { # using a range
  print(x)
} 


# Using for + beak
fruits <- list("apple", "banana", "cherry")
for (x in fruits) {
  if (x == "cherry") {
    break # stop the loop
  }
  print(x)
} 


# Nested for 
adj <- list("red", "big", "tasty")
fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
} 


# Using for + next
fruits <- list("apple", "banana", "cherry")
for (x in fruits) {
  if (x == "banana") {
    next # skip the the end of the code
  }
  print(x)
} 


# Functions 
#########################

# Basic function
my_function <- function() { # create a function with the name my_function
  print("Hello World!")
}


# Using arguments
my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")


# Will you get an error?
my_function() 


# Using default arguments 
my_function <- function(country = "Norway") {
  paste("I am from", country)
}
my_function("Sweden")


# Will you get an error?
my_function() 


# Using return statement 
my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))

# Thanks to the return statement, the function will return the value 15.
y = 12 + my_function(3)
y