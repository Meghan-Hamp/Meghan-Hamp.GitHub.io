---
title: "DataGeneration.R"
author: "Meghan Hamp"
date: "28/01/2020"
output: html_document
---

Generating Data
```{r}
Species<- c("Dog", "T-Rex", "Whale", "Mouse", "Lion", "Dingo", "Elephant", "Narwal", "Penguin", "Bat")

Limb.Width<-rnorm(10, mean = 10, sd = 10); Limb.Width
#There were no negative numbers so I did not need to change anything in the Limb.Width vector

Limb.Width<-abs(Limb.Width)
#Computes the absolute value of Limb.Width so that there will be no negative values. 
#This will work regardless of the random numbers generated

unitsW<- sample(c("mm", "cm"), size = 10, replace = T, prob = c(0.5, 0.5));unitsW
#Creats a vector of mm and cm that are randomly generated and both with a probability of 0.5 (equal probability of appearing)

Limb.Length <-rnorm(10, mean = 100, sd = 100); Limb.Length
#creating a vector of randomly generated numbers just like Limb.Width, except now the mean and sd are 100

Limb.Length<-abs(Limb.Length)
#Compting the absolute value again so that none of the numbers in the vector will be negative

unitsL<- sample(c("mm", "cm"), size = 10, replace = T, prob = c(0.5, 0.5))
#Creates another boolean vector of randomly generated mm and cm, both with equal probability of being listed

mydata<-data.frame(Species, Limb.Width, unitsW, Limb.Length, unitsL, row.names = NULL); mydata
#Creates a dataframe with all of the vectors I created in it. I listed the vectors in the order I want them to appear in my dataframe
```
Saving Data as a CSV file to a folder in my Meghan-Hamp.GitHub.io folder

```{r}
write.csv(mydata, file = "Data/measurements.csv", row.names = F)
#Saves the mydata dataframe as a csv called measurements in the Data folder of my directory. Means it will be save in the Data folder found in the Meghan-Hamp.GitHub.io folder.
```
