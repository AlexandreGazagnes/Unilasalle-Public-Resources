
#################################
#  0301 - Data Generation       #
#        TP 03 1/2              #
#################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01


## 1 Data Generation
#########################################



# Creating 1 000 random values based on a normal distribution
# Mean = 0, Std = 1

n = 10000
mean = 0
std = 1
v = rnorm(n, mean, std)
v

######################################
# WARNING : THIS a huge error ! 
######################################

# Why ? 
# Because mean is already implented in R as a function which compute
# the mean of a numerical serie (or a vector or any 1d array)

# Let's try to compute the mean of v : 
mean(v)

# Ok we have an output 
# but is some cases, this confusion between a builtin function
# and a variable name will be a huge problem
# to avoid this : 

n = 10000 # no confusion here
mean_ = 0
std_ = 1
v = rnorm(n, mean_, std_)
v


# of course it is not mandatory to use temporary variables
v = rnorm(10000, 0, 1)
v


# what is the type of v ? 
class(v)


# what is the mean and the median of v ? 
mean(v)
median(v)


# fancy output ? 
txt = "the mean is "
print(txt, mean(v))


# Our first visualisation
hist(v)


# Using a binomial law
binom = rbinom(100, 1, 0.05)
hist(binom)


# Useless ?
binom = rbinom(1, 1000, 0.05)
hist(binom)


# Using Histograms
hist(rbinom(100, 0, 1))


rnorm(100,0,1)


norm = rnorm(100, 0, 1)
hist(norm)


norm = rnorm(10000, 0, 1)
hist(norm)


norm = rnorm(1000000, 0, 1)
hist(norm)


pois1 = rpois(1000000,0)
hist(pois1)

pois1 = rpois(1000000,1)
hist(pois1)


pois2 = rpois(1000, 2)
hist(pois2)


pois10 = rpois(1000,10)
hist(pois10)



pois1000 = rpois(1000,1000)
hist(pois1000)


pois100000 = rpois(100000,100000)
hist(pois100000)


pois1000000 = rpois(1000000,1000000)
hist(pois1000000)


# OK
unif100 = runif(1000000, 0, 10)
hist(unif100)



hist(runif(1000000, 0, 10))


hist(rexp(1000000, 10))


