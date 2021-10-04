library(dplyr)

#read in csvs
mecha_mpg <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
mecha_scoil <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#deliverable 1
#Perform linear regression predict mpg, pass in all six variables (i.e., columns), and add the dataframe you created as the data parameter
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#summary to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))

#deliverable 2
# mean, median, variance, and stdev from PSI
total_summary <- mecha_scoil %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#group each manufacturing lot by the mean, median, variance, and stdev PSI
lot_summary <- mecha_scoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
