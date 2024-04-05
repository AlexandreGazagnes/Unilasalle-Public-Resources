########################################
#  0402 - Non Parametric Tests         #
#        TP 04 - 2/2                   #
########################################


# Written by Alexandre Gazagnes
# Last update: 2024-02-01



## Shapiro Tests
#########################################

# On normal data
shapiro.test(rnorm(1000))

# Binomial data
shapiro.test(rbinom(1000,1000,.5))

# Uniform data
shapiro.test(runif(1000))


## chi-square law
#########################################

# Chi-square law on a small sample
chisq.test(c(12,11,14,15,30,5))

# Conformity test with respect to fish low with lambda parameter =1.48

# Let's create a function : 
fish = function(i,lambda=1)
        { 
                return(exp(-lambda)*lambda^i/factorial(i))
        }

# We can compute our probabilities
proba=fish(0:3,1.48)

# And perform the test
chisq.test(c(37,46,39,19,9),p=c(proba,1-sum(proba)))

#  The Mendelian theory of heredity suggests that by crossing 2 types of plants, we 
# must obtain products of type A, B, C and D in the proportions 9/16, 3/16, 3/16 and 1 / 16. 
# After the result of experiments, 154 products of type A, 44 of type B, 63 of type C and 21 
# of type D are observed. What can we think, in this case, of the Mendelian theory, ( =5 
# %)?

# We can compute our probabilities
proba = c(9/16,3/16,3/16,1/16)

# And perform the test
chisq.test(c(154,44,63,21),p=c(proba,1-sum(proba)))


# A test on a variety of wheat is carried out on 500 plots. The yield of this variety is 
# noted between 0 and 5 for all the plots. The results are given below

score = c(0,1,2,3,4,5)
observed = c(20, 89, 157, 73, 7)


# Test the binomial law  B(5,0.4768). We can use the command  dbinom(0:5,5,0.4768)  to 
# obtain the probabilities of the binomial distribution of parameter 5 and 0.4768.


# We can compute our probabilities
proba = dbinom(0:5,5,0.4768)

# And perform the test
chisq.test(observed,p=proba)


## Chi-Square Independence Tests
#########################################

# Writing the matrix
M = matrix(c(280,220,210,90,110,90))


# Perform the test
chisq.test(M,2,3)


# Second version: vector writing (x and y are factors)
x=c(rep("G",500),rep("A",300),rep("E",200))
y=c(rep("A",280),rep("B",220),rep("A",210),rep("B",90),rep("A",110),rep("B",90))
chisq.test(x,y)