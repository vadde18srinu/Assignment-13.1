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
library(mice)
library(VIM)

df<-read.csv("F:/AcadGild/workings/COBRA-YTD2017-A13.csv")

summary(df)
str(df)
dim(df)
describe(df)
head(df)
View(df)
sapply(df,class)

# missing values imputation with  with median  
sapply(df, function(x) sum(is.na(x))) # missing values  
df$loc_type[is.na(df$loc_type)] <- median(df$loc_type, na.rm=TRUE)
df$MaxOfnum_victims[is.na(df$MaxOfnum_victims)] <- median(df$MaxOfnum_victims, na.rm=TRUE)
md.pattern(df)

model<-lm(beat ~ MinOfucr+MaxOfnum_victims+x+y, data= df)
model


# correlation scatterplot for all the variables 
plot(df$MaxOfnum_victims, df$MinOfucr)
plot(df$beat, df$MaxOfnum_victims)
plot(df$beat, df$MinOfucr)

cor(df[,c(8,12,15,22,23)], method = "spearman")

cor.test(df$beat, df$MaxOfnum_victims)
cor.test(df$MaxOfnum_victims, df$x)
cor.test(df$MaxOfnum_victims, df$y)
cor.test(df$MaxOfnum_victims,df$MinOfucr)
cor.test(df$x, df$y) 




