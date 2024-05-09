#Author: Riya, Data: 04/11/2024, Purpose: Microarray Analysis

#Set the working directory to your dataset folder
setwd("/Users/sushmachada/Desktop/GSE146964_RAW")

#Load the package Affy
library(affy)
#Another package
library(oligo)

#Read the CEL files using library Affy
data <- ReadAffy()


#Author: Riya, Data: 04/16/2024, Purpose: Boxplots

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

data_log_transformed <- log(Data,2)
boxplot(data_log_transformed)


#Author: Riya, Data: 04/25/2024, Purpose: Microarray Analysis

# Pre-processing/Normaling microarray dataset to remove outliers

# RMA = robust multiarray normalization 
Normalized <- normalize(Data)

boxplot(Normalized)


#Author: Riya, Data: 05/09/2024, Purpose: Microarray Analysis

bp <- boxplot(data_log_transformed,xlab="Samples", ylab="Intensity Values"))
names <- colnames(data_log_transformed)
tick <- seq_along(names)
axis(1, at = tick, labels = FALSE)
text(tick, par("usr")[3] - 0.3, names, srt = 90, xpd = TRUE)

# For Normalization:
res <- basicRMA() or try res <- RMA()









