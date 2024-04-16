#Author: Riya, Data: 04/11/2024, Purpose: Microarray Analysis

#Set the working directory to your dataset folder
setwd("/Users/sushmachada/Desktop/GSE146964_RAW")

#Load the package Affy
library(affy)
#Another package
library(oligo)

#Read the CEL files using library Affy
data <- ReadAffy()


#Author: Riya, Data: 04/16/2024, Purpose: Microarray Analysis

#Read the CEL files using library Affy
data <- ReadAffy()

#Load package oligo
library(oligo)

#List all CEL files in folder
celfiles <- list.files('/Users/sushmachada/Desktop/GSE146964_RAW', full=TRUE)

#Read all CEL files in folder
rawData <- read.celfiles(celfiles)

#Extract the expression data from CEL files
Data <- exprs(rawData)

#Create Boxplot
boxplot(Data)

data_log_transformed <- log(data,2)
boxplot(data_log_transformed)
