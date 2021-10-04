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

#deliverable 3
# use t.test to determine if the PSI across all lots is statistically different from the population mean
t.test(mecha_scoil$PSI, mu=1500)

# individual lot t.tests
#lot 1
t.test(subset(mecha_scoil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
#lot 2
t.test(subset(mecha_scoil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
#lot3
t.test(subset(mecha_scoil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

