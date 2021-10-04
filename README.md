# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle length, and ground clearance both have p-values below 0.05 which indicates that they are statistically less likely to provide a random amount of variance to the model. In contract, spoiler angle, AWD, and vehicle weight all have p-values above 0.05 which indicate a statistically likelihood to have more random amounts of variance in the model.

Is the slope of the linear model considered to be zero? Why or why not?
- The slope is not considered to be zero, as there is a significant linear relationship between mpg and each variable.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- According to the summary results, the R-squared value is 0.7149 and the p-value is 5.35e-11 both indicate there is sufficient evidence to reject our null hypothesis which makes this linear model to predict mpg 'effective', which further indicates that the slope of this linear model is not zero.

Image of linear regression results:

![image](https://github.com/trosie3/MechaCar_Statistical_Analysis/blob/main/Resources/Images/mpglinearregressionmodel.png)

## Summary Statistics on Suspension Coils
Images: Overall Summary vs Individual Lot Summary

![imgae](https://github.com/trosie3/MechaCar_Statistical_Analysis/blob/main/Resources/Images/PSItotal_summary.png)
![image](https://github.com/trosie3/MechaCar_Statistical_Analysis/blob/main/Resources/Images/PSIlot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- Looking at the total summary, the suspension coils are all within accepted parameters as the variance is 62.29356. However looking at the breakdown of each individual lot, lot 3 does not meet the the correct design specifications as it exceeds 100 pound per square inch. Both Lot 1 and Lot 2 are within the accepted design specification parameters. 
    - Had data not been broken down to look at individual lots, it might have been missed that lot 3 does not meet the design specification parameters. 

## T-Tests on Suspension Coils
![image](https://github.com/trosie3/MechaCar_Statistical_Analysis/blob/main/Resources/Images/alllots_ttest.png)

- Based on the t-test for all lots p-value is 0.06028 (image above), therefore there is not enough evidence to reject the null that there is no significant difference in the mean.

Images: one-sample t-tests for Lot1, Lot2 and Lot3

![image](https://github.com/trosie3/MechaCar_Statistical_Analysis/blob/main/Resources/Images/lot1_ttest.png)
![image](https://github.com/trosie3/MechaCar_Statistical_Analysis/blob/main/Resources/Images/lot2_ttest.png)
![image](https://github.com/trosie3/MechaCar_Statistical_Analysis/blob/main/Resources/Images/lot3_ttest.png)

- Based on the individual t-tests for lot 1 p-value of 1, and lot 2 p-value 0.6072, again we fail to reject the null. However, lot 3 has a p-value of 0.04168 in this case we reject the null given the threshold of 0.05 significance and can say this sample mean is significantly different.
  - This data suggests that something is off with lot 3, supporting the find above that lot 3 did not meet design specifications.

## Study Design: MechaCar vs Competition
What metric or metrics are you going to test?
- If I were to do a study to compare MechaCar to it's competition I would look at areas that I personally look at when purchasing a vehicle: fuel efficiency, safety, and cost compared to similar vehicles types in the same arena i.e. if MechaCar is luxury car brand then I would only compare other luxury car brands to them. 

What is the null hypothesis or alternative hypothesis?
- Null: MechaCar manufactures vehicles that are comparable to their closest competition in safety ratings, cost, and fuel efficiency within a 5% margin.
- Alternative: MechaCar manufactures vehicles that are not comparable to their closet competition in those areas.

What statistical test would you use to test the hypothesis? And why? 
- I would use ANOVA tests to complete most of the statistical analysis as I would be comparing multiple brands on similar variables one each for cost, safety rating and hwy/city fuel inefficiencies. ANOVA also supports testing of multiple independent variables at once and this two might be needed in this study. I would probably also use ggplot to create visualizations along side the tests to show case the data found in the study.

What data is needed to run the statistical test? 
- Select three other brands that MechaCar directly competes with, within those brands select the similar makes/models to the makes/models that MechaCar manufactures. Then would need to gather these datasets:
  - Safety - vehicle safety ratings for each vehicle in the study
  - Full efficiency - MPG both hwy and cty data for each vehicle in the study
  - Cost - MSRP for each vehicle in the study
