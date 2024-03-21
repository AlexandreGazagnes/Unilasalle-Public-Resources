########################################
#  0401 - Parametric Tests             #
#        TP 04 - 1/2                   #
########################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01


## Context
####################################


# Use Case 1 : 

#Suppose you want to evaluate a new fertilizer for your corn projects
# We hope that the new fertilizer will give more balanced plans
# We hope to see a difference
# It will be “boring” to have the same results with the new fertilizer
# 'boring', 'misleading', 'bad', 'bad', '0'
# So hypothesis 0 => no significant difference
# and hypothesis 1 => significant differences


# Use case 2 : 
# Suppose you are at the casino. 
# You are playing a game with dice and you have doubts whether the dice is loaded... 
# There is something weird with the 1 value, but how could you be sure that the dice is loaded?


## Dummy Tests
#########################################

# Create a dummy vector :
# Suppose this a sample of 1_000 observations
v0 = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.01)
v0

# Compute empiric stats : 
empiric_mean = mean(v0)
empiric_mean

mu = mean(v0)

# Theoric values : 
theoric_mu = 0
mu0 = 0 # mu0 because of h0 ;) 


# Perform the following test : 
t.test(v0)
# Remainder : h0 => means are equal / h1 = means are diffrent
# We reject h0 if p value < 0.05

# Better to store in a variable :
test_v0 = t.test(v0)
test_v0

# Remainder : h0 => means are equal / h1 = means are diffrent
# We reject h0 if p value < 0.05


# Have a look to :
test_v0$statistic # = 1
test_v0$p.value # 0.33 > 0.5 # ==> We can accept h0
test_v0$parameter # length(X) - 1 # Freedom  
test_v0$conf.int # 95% interval


p_value = test_v0$p.value # 0.33 > 0.5 # ==> We can accept h0


# By default : 
t.test(v_0, mu=0, conf.level = 0.95)


# Lets try with a wierd mu0 : 
t.test(v_0, mu=1, conf.level = 0.95)


# Lets try with a dummy conf.level : 
# In real life, this is non sense. This code is just here for pedagocical concerns
t.test(v_0, mu=1, conf.level = 0.01)


# Create a second dummy vector :
v10 = seq(10)
v10

# Empiric_mean or mu : 
empiric_mean = mean(v10)
empiric_mean

# Test it :
test = t.test(v10)
test = t.test(seq(10)) # perfectly OK
test


# Test if with empiric mean
# In real life, this is non sense. This code is just here for pedagocical concerns
test = t.test(v10, mu=5.5)
test
test = t.test(v10, mu=empiric_mean)


## Not so dummy Tests
#################################################


# Let's try this : 
v = c(18,16,23,25,20,22,19,23,17,24)
v

empiric_mean = mean(v)
empiric_mean

mu0 = 20
mu0

# This is OK : 
t.test(v, mu=mu0, conf.level=.95)

# In your IDE, You can write your code on multiple lines
# For better readability
t.test(v, 
       mu=mu0, 
       conf.level=.95)


# Another Test : 
t.test(runif(100,0,2), mu=1, conf.level=.9)


# Test of homogeneity of means of 2 series : 
v_unif = runif(150,-1, 1) # random values for unifrom distrib
v_unif
hist(v_unif)

v_norm = rnorm(150) # random values for normal
v_norm 
hist(v_norm)

test = t.test( v_unif, # test 2 series means are equal
        v_norm,
        var.equal=TRUE)

test = t.test( v_unif, # test 2 series with one mean greater than the other
        v_norm,
        var.equal=TRUE,
        alternative="g")

# For more inforamtion : https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/t.test


# Test 2 series but with F column factor : 
s = seq(100) # 1, 2, 3, ... 100
s 

# Using rep function
a_rep = rep("A",50) # A, A, A, A ...
a_rep 

b_rep = rep("B",50) # B, B, B ...
b_rep 

# Concataing 2 vectors
f = c(a_rep, b_rep)
f

# Of course we can write
f = c(rep("A",50),rep("B",50)) # A, A, A, A ... B, B, B
f 

df=data.frame("S"=s,"F"=f) # Build a df
df

# select only values for A values
group_a = df[df$F=="A", ] # extract group a
group_a

# feel free to break up the code : 
indexor = df$F=="A"
indexor
group_a = df[indexor, ]
group_a

# same for group_b
group_b = df[df$F=="B", ] # extract group b
group_b

# Test S values for A group and B group
t.test(group_a$S, group_b$S, var.equal=TRUE) # test a vs b

# Using "formula" parametre
t.test(formula=df$S~df$F,var.equal=TRUE) # Better implementation



# Questions 
###################


# After a treatment on a variety of animals...
v = c(83, 81, 84, 80, 85)
mu0 = 87.6
t.test(v, mu=mu0, conf.int=0.95)


# We observed the amount of potassium...
beech = c(63, 84, 82, 61, 81, 74)
mean(beech)


coppice = c(64, 60, 45, 59, 48, 59)

t.test(beech, coppice ,var.equal=TRUE, conf.int=0.95)


# Variance
#############################################


# Dummy 1 
s1 = c(1, 2, 3, 4, 5, 6)
s1 <- c(1, 2, 3, 4, 5, 6) # this <- is also OK ;) 
s2 = c(10, 20, 30, 40, 50, 60)
var.test(s1, s2)


# Dummy 2
s1 = c(1, 2, 3, 4, 5, 6) # seq(6)
s2 = c(1, 2, 3, 4, 5, 105.9)
var.test(s1, s2)


# Dummy 3
s1 = c(1, 2, 3, 4, 5, 6) # seq(6)
s2 = c(1, 2, 3, 4, 5, 105.9)
var.test(s1, s2)


# Homogeneity of variance test, bilateral test, confidence level 90%:
var.test(rnorm(100,0,2),runif(100,0,1), conf.level = 0.9)


# Homogeneity of variance test to compare two groups
df=data.frame("Norm"=rnorm(10),"F"=c(rep(c("A","B"),5)))
df
var.test(formula=df$Norm~df$F,conf.level=0.9)


# The same variety of oats was sown : 
d1 = c(538, 491, 508, 438, 382, 409, 433, 491, 420, 547, 478)
d2 = c(450, 393, 431, 326, 335, 467, 431, 356, 463, 439, 42)
var.test(d1, d2, conf.level=0.90)


# Small remainder : 
# The most familiar example of a paired difference test occurs when subjects are measured before and after a treatment. 
# Such a "repeated measures" test compares these measurements within subjects, rather than across subjects, and will generally 
# have greater power than an unpaired test. Another example comes from matching cases of a disease with comparable controls. 



# Propotions
#############################################



# A dice problem
probs_ok = rep(1/6, 6) # probs for each value of a not loaded dice
probs_ok


# of course 
sum(probs_ok)

# and 
sum(probs_ok) ==1

# Throw it 10 000 times
n = 10000

# Values for the dice
dice_values = 1:6 # OK
dice_values <- seq(6) # OK
dice_values = c(1,2,3,4,5,6) # OK


# Use sample function to simulate the experience
# Please note that replace = TRUE ie we can have 1 value multiple times
dice_ok = sample(1:6, size = n, replace = TRUE, prob = probs_ok) # simulate random dice roll n times
dice_ok

# find True False if value ==1
equals_1 = dice_ok == 1 # True / false == 1
equals_1

# Extract idendexes where value ==1
which_1 = which(equals_1) # give indexes of TRUE VALUES

# Count the number of values we have
len_1 = length(which_1) # give number of 1

# Lets try 
len_1_bis = sum(which_1) # Is it the same? 

# probs 
theoric_prob = 1/6
# empiric prob 
len_1/n

# Lets test it
prop.test(len_1 ,n ,correct=FALSE, p=1/6)


# Creating a function
roll_dice = function(n, value=1, probs=rep(1/6, 6)) {
    # Simulate a n roll dice with specific probs values (default is 1/6 for each number)
    # test if the value (between 1 and 6) has a "regular" proportion of 1/6

    dices_output = sample(1:6, size = n, replace = TRUE, prob = probs) 
    equals_value = dices_output == value
    which_value = which(equals_value)
    len_values = length(which_value) 

    return(prop.test(len_values ,n ,correct=FALSE, p=1/6)  )    
}


# Try it with good dices :
roll_dice(10)
roll_dice(100)
roll_dice(10000)


# Try it with weird dices : 
probs = c(0.168, 0.165, 0.167, 0.167, 0.167, 0.166)
sum(probs)
roll_dice(10, probs = probs)
roll_dice(100, probs = probs)
roll_dice(10000, probs = probs)


# Try it with loaded dices : 
probs = c(0.148, 0.185, 0.167, 0.167, 0.167, 0.166)
sum(probs) # Always check this :) 
roll_dice(10, probs = probs)
roll_dice(100, probs = probs)
roll_dice(10000, probs = probs)


# Proportion conformity test p=0.5, bilateral test at 95%:
prop.test(length(which(rnorm(1000)>=0)),1000,correct=FALSE)


# Homogeneity test of proportions between two groups, bilateral test at 90%:


# Build our MAtrix
M=matrix(c(50,50,100,150),2,2)
M

prop.test(M, conf.level=0.9,correct=FALSE)