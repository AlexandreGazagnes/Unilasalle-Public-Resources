#################################
#  0302 - Data Visualization    #
#        TP 03 2/2              #
#################################

# Creating a range from 1 to 6
v = 1:6

# Creating a Matrix
matrix(v, nrow = 3, ncol = 2)
matrix


# Please note : 
dummy_matrix = matrix(v, nrow = 4, ncol = 4)
dummy_matrix



# Create a layout based on the matrix : 
layout(matrix)
# We can now display 6 viz, on a single page, with 3 rows and 2 cols


# Basic Histograms 
hist(rnorm(1000, 0, 1))


# Specify horizontal and vertical axis
hist(rnorm(1000,0,1), xlab="X", ylab="Occurrences")



# Adding a title, color and labels
title =" Histogram of 1000 data randomly generated according to the law N(0,1)"
v = rnorm(1000,0,1)
hist(v, main=title, xlab=" X ", ylab="Occurrences", col="blue", labels=TRUE)


# For more readability
hist(v, 
    main=title, 
    xlab=" X ", 
    ylab="Occurrences", 
    col="gold", 
    labels=TRUE)


# About colors : 
# https://www.nceas.ucsb.edu/sites/default/files/2020-04/colorPaletteCheatsheet.pdf

layout(1)

#######################################################################################################

# creating breaks 
breaks = seq(-4,4,.25)
# Warning : 'breaks' and not 'break' (break is a special keyword)


# Hist with speacific Breaks
v= rnorm(1000,0,1)
hist(v, 
    main=title, 
    xlab=" X ",  
    ylab="Occurrences",  
    col="blue",
    labels=TRUE, breaks=breaks)




ser = rnorm(100000,0,1)

hist(ser ,main=title, xlab=" X ", ylab="Occurrences", col="blue",labels=TRUE, 
breaks=10, xlim=c(-4, 4))


hist(ser ,main=title, xlab=" X ", ylab="Occurrences", col="blue",labels=TRUE, 
breaks=10, xlim=c(-10, 10))




hist(rnorm(1000000,0,1),main=title, xlab=" X ", ylab="Occurrences", col="blue",labels=TRUE, 
breaks=6, xlim=c(-10, 10))


hist(rnorm(1000000,0,1),main=title, xlab=" X ", ylab="Occurrences", col="blue",labels=TRUE, 
breaks= seq(-4,4,.5),xlim=c(-10,10), ylim=c(0,250)) ; 



axis(side=1,at=seq(-4,4,1))


layout(1)


v = c(1.80,1.90,1.83,1.70,1.83,1.90,1.90,1.90,1.90,1.83,1.86,1.90,1.85,1.79,1.85,1.80,
1.78,1.83,1.85,1.80,1.86,1.80,1.85,1.81,1.83,1.80,1.81,1.78,1.85,1.75,1.75,1.79,1.85,
1.86,1.78,1.67,1.85,1.87,1.85,1.86,1.94,1.78,
1.85,1.85,1.85,1.85,1.85,1.93,1.85,1.83,1.80,1.86,1.85,1.80,1.83,1.80,1.80,
1.82,1.85,1.80,1.82,1.80,1.88,1.83,
1.80,1.80,1.80,1.80,1.78,1.75,1.80,1.80,1.80,1.80,1.80,1.82,1.80,1.86,1.80)
v


hist(v)
axis(side=1,at=seq(-4,4,1))

# ABOUT AXIS

hist(v,main="Teacher size estimation",xlab="Taille (m)",ylab="Occurences",breaks=seq(1.65,1.95,.01))



hist(c(rep(1.65,5),rep(1.75,15),rep(1.85,10),rep(1.95,2)),main= " Person size ", xlab="Size 
(m)",ylab=" Corrected classes",breaks=c(1.5,1.7,1.8,1.9,2), density=c(2,4,6,10), labels=paste(c(5,15,10,2)),angle=c(90,60,30,0))
# col=c("green","yellow","red","blue")


serie=c(1.80,1.90,1.83,1.70,1.83,1.90,1.90,1.90,1.90,1.83,1.86,1.90,1.85,1.79,1.85,1.80,1.78,1.83,1.85,1.80,1.86,1.80,1.85,1.81,1.83,1.80,1.81,1.78,1.85,1.75,1.75,1.79,1.85,1.86,1.78,1.67,1.85,1.87,1.85,1.86,1.94,1.78,1.85,1.85,1.85,1.85,1.85,1.93,1.85,1.83,1.80,1.86,1.85,1.80,1.83,1.80,1.80,1.82,1.85,1.80,1.82,1.80,1.88,1.83,1.80,1.80,1.80,1.80,1.78,1.75,1.80,1.80,1.80,1.80,1.80,1.82,1.80,1.86,1.80)

hist(serie,main="Teacher size estimation",xlab="Taille (m)",ylab="Occurences",breaks=seq(1.65,1.95,.01))

barplot(c(32,33,9,0),col=c("blue","red","yellow","grey"),horiz=TRUE,legend.text=c("Range 1","Range 2","Range 3","Range 4"),main="Optimal range of students to work",names=c("8h15-10h15","10h30-12h30","14h05-16h05","16h20-18h05"))

pie(c(1,2,3,4),
    clockwise=TRUE,
    radius=1.2,
    main="Who ate the pie?",
    col=c("blue","red","yellow","grey"),
    label=c("Evan","Juliette","Pierre","Marie"))


## Box Plot


serie = rnorm(10000000, 20, 20)

boxplot(serie)

boxplot(serie,main="Teacher size estimation",ylab="Taille (m)",col="blue")

data=data.frame("N"=rnorm(1000,0,1), "E"=rexp(1000,1), "U"=runif(1000,-1, 1))
data
boxplot(data,main=" Comparison of different probability laws ")
text(3,5," Note the number \ n of outliers \ n for the exponential law ")



boxplot(subset(data,,1:2),names=c("Normal "," Exponential "),col=c("blue","red"),main=" 
Normal and exponential laws ",horizontal=TRUE)



a=matrix(c(18,19,3,0,20,14,5,2),4,2) # Definition of a matrix M(4,2)
color= c("blue","red","yellow","grey")


barplot(a,xlim=c(0,65),xlab="Classes",names=c("D1","D2"),horiz=TRUE,col=color, main=" 
Optimal range of students to work according to the half of the students  ")
legend("right",legend=c("8h15-10h15","10h30-12h30","13h45-15h45","16h00-18h00"), 
fill=color)