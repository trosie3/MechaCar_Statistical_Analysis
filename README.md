# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![image]
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle length, and ground clearance both have p-values below 0.05 which indicates that they are statistically less likely to provide a random amount of variance to the model. In contract, spoiler angle, AWD, and vehicle weight all have p-values above 0.05 which indicate a statistically likelihood to have more random amounts of variance in the model.
Is the slope of the linear model considered to be zero? Why or why not?
The slope is not considered to be zero, as there is a significant linear relationship between mpg and each variable.
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
According to the R-squared value of 0.7149 and p-value 5.35e-11 both indicate there is sufficient evidence to reject our null hypothesis which makes this linear model to predict mpg 'effective', which further indicates that the slope of this linear model is not zero.