library(dplyr)

#read in csv
mechacar_mpg <- read.csv(file='Resources\MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression predict mpg, pass in all six variables (i.e., columns), and add the dataframe you created as the data parameter
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

#summary to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))
