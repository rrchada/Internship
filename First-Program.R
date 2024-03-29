# Author: Riya Chada, Date: 01/11/2024, Purpose: Microarray analysis
# Author: Riya Chada, Date: 01/18/2024, Purpose: Basics of R Programing

# Calculate average/mean of 6 numbers
# SetA = {1,2,3,4,5,6}
# Average = (1+2+3+4+5+6)/6
x <- c(1,2,3,10,20,30)
mean(x)
sd(x)

# name() is a function

# Data to calculate means on
https://gist.github.com/seankross/a412dfbd88b3db70b74b 

# Assignment: Read about correlation test


# Author: Riya Chada, Date: 01/25/2024, Purpose: Reading File in R

# Correlation gives information about magnitude (-1,0,+1) and direction (+/direct or -/inverse)

# Read the file mtcars.csv in R
# Setting the working directory: setwd("/Users/sushmachada/Desktop")
# In Terminal to get directory: ls, cd Desktop, ls, pwd
# To read file in R:
data <- read.csv("mtcars.csv", header=TRUE)
head(data)


# Author: Riya Chada, Date: 01/30/2024, Purpose: Correlation in R

# Review:
# Function is read.csv and arguments are separated by commas
# By setting header=TRUE, the first row is seen as a header and not labeled with numbers
# head(data) to see first part of data
# tail(data) to see last part of data
# dim(data) = to check dimensions of data (no. of rows & columns) 

# Apply correlation test: 
result <- cor.test(data$mpg, data$wt)
# $ is used to point at a desired column within the data
# cor = -0.8676594, therefore inverse relationship and magnitude is fairly high
# P-value less than 0.05: significant difference; greater than 0.05: not a significant difference

# In-Class Assignment:
# Generate 3 correlation values for mpg v. hp; mpg v. drat; mpg v. qsec
# Copy three outputs into R document, save and upload file on Git repo.
# Results:
# Cor value for mpg vs hp: -0.7761684 
# Cor value for mpg vs drat: 0.6811719 
# Cor value for mpg vs qsec: 0.418684 

# Online Compiler R (TutorialsPoint/Programiz): to test functions/statements; for debugging


# Author: Riya Chada, Date: 02/22/2024, Purpose: Export in R

# What is export? Saving output from R program
# csv file = comma separated value file
# csv file can only save the first sheet so there can be possible data loss, but excel saves all sheets
# to export file in csv file:
write.csv(data, "export.csv") 
# 2 arguments: what variable the data is stored in in R, "where you want to save the data"
# to export file in txt file:
write.table(data, "export.txt")

# Visualization in R:
# Bar plots, Scatter plots, Volcano plots, Venn diagrams, Pie charts, Density plots, Line plots, etc.
# Bar plot for cyl and gear with cyclinders as x-axis, gears as y-axis, and title as Number of gears per cyclinder:
barplot(data$cyl,data$gear,xlab="cylinders",ylab="gears",main="Number of gears per cyclinder")


# Author: Riya Chada, Date: 02/29/2024, Purpose: Visualization in R cont.

# Density Plots:
# For mpg with superimposed hp line:
den <- density(data$mpg)
plot(den, col = "blue")
lines(density(data$hp),lwd = 2, col= "red")
# lwd is line width
# col="x" is color

# Histogram (bar + density):
hist(data$mpg)
lines(density(data$qsec),lwd = 2, col= "red")

# Scatterplot:
plot(data$wt, data$mpg, main="Scatterplot Example", xlab="Car Weight", ylab="Miles Per Gallon", pch=19)
# pch is dot size


# T-test: used to test differences between "2 groups"
# gives p-value

# ANOVA test (Analysis of Variance): used to test differences between "more than 2 groups"
# gives f-value

# Types of Hypothesis (Null & Alternate):
# Null says there is no significant difference between the variables
# Alternate is my hypothesis (that there is a significant difference)


# Author: Riya Chada, Date: 03/07/2024, Purpose: T-test & ANOVA

# T-test: used to test differences between "2 groups"
# gives p-value: if less than 0.05, then significant
# Assumption 1: data should follow normal distribution
# normal distribution: mean, mode, median lie in center of bell curve; standard deviation = 1; no outliers
# if there are outliers, normalize the data or get rid of them
# Line of Best Fit: linear line that goes through origin
# how close are the data points to this line; helps identify outliers
# to add line of best fit to a scatterplot:
# creating a data frame to store the two variables:
data <- data.frame("y"=mtcars$disp,"x"=mtcars$wt)
# creating best fit line model:
fit <-  lm(data$y ~  data$x)
# flip it:
fit_inverse <-  lm(data$y ~  I(1/data$x))
# plot it:
plot(data$x,data$y,col = "blue",bty="l",pch=20,ylab = "",xlab="")
# apply the inverse fit model to the plot:
lines(data$x,fitted(fit) ,type="l",lty = 29,col="blue")

# assignment: generate best fit line for mpg and weight
data <- data.frame("y"=mtcars$mpg,"x"=mtcars$wt)
fit <-  lm(data$y ~  data$x)
fit_inverse <-  lm(data$y ~  I(1/data$x))
plot(data$x,data$y,col = "blue",bty="l",pch=20,ylab = "Miles Per Gallon",xlab="Car Weight")
lines(data$x,fitted(fit) ,type="l",lty = 29,col="blue")




