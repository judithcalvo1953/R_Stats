setwd("C:/Users/judyc/OneDrive/Desktop/Class/R_Analysis/Challenge")
library(tidyverse)
MechaCar_table <- read.csv('MechaCar_mpg.csv', check.names = F,stringsAsFactors = F)
#note changed variable names to make them work better in R

#first model (could possibly be overfitted)
lm(mpg ~len + wt +angle + clearance + AWD, data=MechaCar_table)
summary(lm(mpg ~len + wt +angle + clearance + AWD, data=MechaCar_table))

#second model (removal of variables from first test that did not show statistical significance)
lm(mpg ~len + clearance, data=MechaCar_table)
summary(lm(mpg ~len + clearance, data=MechaCar_table))

#Next challenge question--suspension coil analysis
suspension <- read.csv('Suspension_Coil.csv', check.names = F,stringsAsFactors = F)

summarize_coil <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), SD_PSI = sd(PSI), Var_PSI =var(PSI),Num_items=n())
summarize_all_coil <- suspension %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), SD_PSI = sd(PSI), Var_PSI =var(PSI),Num_items=n())

#Challenge question 3:suspension coil t-test
sample_coil <- suspension %>% sample_n(50)
t.test((sample_coil$PSI), mu=mean((suspension$PSI))) #compare sample versus pop means one-sample t-test