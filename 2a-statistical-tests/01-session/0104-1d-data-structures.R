# Written by Alexandre Gazagnes
# Last update: 2024-02-01
# Based on https://www.w3schools.com/r/default.asp


#################################
#     TP 04 - Data Structures   #
#        4/4                    #
#################################


# Vectors
##########################

# Vector of strings
fruits <- c("banana", "apple", "orange")
# Print fruits
fruits


# Length
length(fruits)


# Vector of numbers
numbers <- c(1, 2, 3, 4, 5)
numbers


# Vector of mixed data types
mixed <- c("apple", 1, 2, 3, 4, 5)
mixed # "apple" "1" "2" "3" "4" "5"

# Same with int and float
mixed  = c(1.4, 1, 0, 12)
mixed # 1.4 1.0 0.0 12.0


# Vector concatenation
fruits <- c("banana", "apple", "orange")
veggies <- c("tomato", "potato", "onion")
food <- c(fruits, veggies)

# Be careful with the order of operations
fruits <- c("banana", "apple")
food # here food was not modified


# Sort
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)
sort(fruits)  # Sort a string
sort(numbers) # Sort numbers 
sort(numbers, decreasing = TRUE) # Sort numbers in decreasing order


# Rank
rank(fruits)  # Rank a string
rank(numbers) # Rank numbers


# Sum
sum(numbers) # Sum of numbers
sum(numbers, na.rm = TRUE) # Sum of numbers, ignoring NA values


# Names of the elements
fruits <- c("banana", "apple", "orange")
names(fruits) <- c("first", "second", "third")
fruits


# Accessssing items
fruits <- c("banana", "apple", "orange")
fruits[1]  # 1-based index => 1st item
fruits[2]  # 1-based index => 2nd item


# Access the last item (orange)
fruits[length(fruits)] # 1-based index => last item
fruits[-1] # all but the first
fruits[-2] # all but the second


# Access the first and third item (banana and orange)
fruits <- c("banana", "apple", "orange", "mango", "lemon")
v = c(1, 3) # indices
fruits[v]  # 1-based index => 1st and 3rd items

# Access all but the first and third item (apple and mango)
fruits <- c("banana", "apple", "orange", "mango", "lemon")
v = c(-1, -3) # indices
fruits[v]  # 1-based index => all but 1st and 3rd items
# better :
v = c(1,3)
fruits[-v]  # 1-based index => all but 1st and 3rd items


# With a range
fruits <- c("banana", "apple", "orange", "mango", "lemon")
v = 1:3
fruits[v]  # 1-based index => 1st to 3rd items
# better :
fruits[1:3]  # 1-based index => 1st to 3rd items


# Change "banana" to "pear"
fruits[1] <- "pear"
fruits


# Repetition and sequences
##########################

# Repetitions
repeat_each <- rep(c(1,2,3), each = 3)
repeat_each


# Sequences
numbers <- seq(0, 100, 20)
numbers <- seq(from = 0, to = 100, by = 20)
numbers