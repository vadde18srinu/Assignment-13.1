1. Use the given link Data Set
Answer the below questions:
a. Find out top 5 attributes having highest correlation (select only Numeric features).
b. Find out top 3 reasons for having more crime in a city.
c. Which all attributes have correlation with crime rate?
  
setwd("F:/AcadGild/workings")
library(readr)
library(Hmisc)
library(dplyr)
library(MASS)
library(ggplot2)
library(lattice)
library(car)
library(caret)
library(rpart)
library(randomForest)
library(rpart)
library(rpart.plot)
library(RColorBrewer)
library(rattle)


df<-read.table("https://archive.ics.uci.edu/ml/machine-learning-databases/yeast/yeast.data", header = FALSE)

summary(df)
str(df)
dim(df)
describe(df)
head(df)
sapply(df,class)

# correlation scatterplot for all the variables 
plot(df$V2, df$V3)
pairs(df)

cor(df[2:9], method = "spearman")

cor.test(df$V2, df$V3)
cor.test(df$V4, df$V5)
cor.test(df$V6, df$V7)
cor.test(df$V7, df$V8)
cor.test(df$V8, df$V9)




