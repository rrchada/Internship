# Author: Riya Chada, Date: 01/11/2024, Purpose: Microarray analysis
# Author: Riya Chada, Date: 01/18/2024, Purpose: Basics of R Programing

#Calculate average/mean of 6 numbers
#SetA = {1,2,3,4,5,6}
#Average = (1+2+3+4+5+6)/6
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

# Apply correlation test: 
result <- cor.test(data$mpg, data$wt)
# $ is used to point at a desired column within the data
# cor = -0.8676594, therefore inverse relationship and magnitude is fairly high
# P-value less than 0.05: significant difference; greater than 0.05: not a significant difference

# In-Class Assignment:
# Generate 3 correlation values for mpg v. hp; mpg v. drat; mpg v. qsec
# Copy three outputs into R document, save and upload file on Git repo.

# Cor value for mpg vs hp: -0.7761684 
# Cor value for mpg vs drat: 0.6811719 
# Cor value for mpg vs qsec: 0.418684 

 


