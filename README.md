# R_Stats
This is my submission of the Challenge.  For full detail, please refer to the MechaCarWriteUp.txt.  Herein is a synopsis:
## PART ONE: MPG REGRESSION
### REPORT:
- the Regression Model using all predictors showed that car length, and ground clearance were the only variables that contributed significantly to the variance in MPG. Refer to the full write up.
- this is seen by the coefficient of .63 (6.267e+00) for car length and .35 ( 3.546e+00) for ground clearance.  Both p-value <0.0001.
- the R-squared value is .71, meaning the model contributes to 71% of the variance in MPG. Another way of explaining it is that it is a probability metric to determine the likelihood that future data points will fit this model.

- See also: Bruce, P and Bruce A (2017). "Practical Statistics for Data Scientists", O'Reilly Press, for an explanation of R-squared, also referred to as the Coefficient of Determination.
- The linear model predicts mpg of MechCar effectively as it meets the rule of thumb of 70% mentioned in the module.

## Part 2: SUSPENSION COIL ANALYSIS
- analysis was run by grouping by Lot and for the sample as a whole.
- The variance of this data supports that the variance does not exceed 100 PSI.
- However, when examining by lot, Lot #3 does show a variance of 170.27, which is the only sub-group showing a difference.
- The data as a whole shows a variance of 62.29.  (findings in tabular format can be replicated using the Rscript).

## Part 3:  SUSPENSION COIL COMPARISON TO POPULATION
- The findings demonstrate that the sample PSI does not vary significantly from the popuplation, as p > 0.05 (p-value = 0.6919)

## Part 4: My Own Study
- The details of this study are showing in the write-up text.  The study will use a two-sample t-test with a comparabl randomly selected set of cars from a national database, involving the same variables, and have MPG as the dependent variable.  The follow-up will use a multiple linear regression to examine key variables as they predict MPG.
