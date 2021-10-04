# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![image]
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle length, and ground clearance both have p-values below 0.05 which indicates that they are statistically less likely to provide a random amount of variance to the model. In contract, spoiler angle, AWD, and vehicle weight all have p-values above 0.05 which indicate a statistically likelihood to have more random amounts of variance in the model.
Is the slope of the linear model considered to be zero? Why or why not?
The slope is not considered to be zero, as there is a significant linear relationship between mpg and each variable.
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
According to the R-squared value of 0.7149 and p-value 5.35e-11 both indicate there is sufficient evidence to reject our null hypothesis which makes this linear model to predict mpg 'effective', which further indicates that the slope of this linear model is not zero.

## Summary Statistics on Suspension Coils
![imgae]
![image]
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Looking at the total summary, the suspension coils are all within accepted parameters as the variance is 62.29356. However looking at the breakdown of each individual lot, lot 3 does not meet the the correct design specifications as it exceeds 100 pound per square inch. Both Lot 1 and Lot 2 are within the accepted design specification parameters. Had we not broken this data down by lot, lot 3 could have been released and used in cars potentially causing a safety issue but looking at is this way it is relatively easy to say lot 3 is unusable product. 

