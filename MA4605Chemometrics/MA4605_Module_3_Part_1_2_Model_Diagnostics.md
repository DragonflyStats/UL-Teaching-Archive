This material fits best in Module 3: Calibration, Linear Regression, Robust Modelling & Detection Limits, immediately after the section on fitting regression models and before multiple regression. It naturally extends the discussion from model fitting to model validation and diagnostic checking.

Suggested Location

In MA4605_Course_Material.md:

3.1 Linear Calibration & Model Estimation
    3.1.1 Calibration Concepts, Standard Solutions and Standard Additions
    3.1.2 Model Diagnostics for Linear Regression   <-- Add here
3.2 Multiple Linear Regression & Model Selection


This also aligns well with Week 6: Calibration & Simple Linear Regression before students progress to more advanced modelling topics.


-------------------------------------------------------------------------------

###### 3.1.2 Model Diagnostics for Linear Regression

#### Why Model Diagnostics Matter

A regression model may provide coefficient estimates, p-values, and measures of goodness-of-fit, but these results are only reliable when the model assumptions are satisfied.

For ordinary least squares (OLS) regression, the key assumptions include:

- A linear relationship between predictors and response.
- Independent observations.
- Normally distributed residuals.
- Constant variance of residuals (homoscedasticity).
- Mean residual equal to zero.

Diagnostic plots help determine whether these assumptions are reasonable.

---

#### Residuals and Fitted Values

A residual is the difference between an observed value and the corresponding model prediction:

$$
e_i = y_i - \hat{y}_i
$$

where:

- $y_i$ is the observed value.
- $\hat{y}_i$ is the fitted value.
- $e_i$ is the residual.

A useful diagnostic plot is the **Residuals vs Fitted Values Plot**.

```r
plot(fitted(FIT1), resid(FIT1))
abline(h = 0, lty = 2)
```

---

#### Residuals vs Fitted Values Plot

A well-behaved regression model should produce residuals that:

- Are randomly scattered around zero.
- Have approximately constant spread.
- Show no clear pattern or trend.

##### Example of a Good Residual Plot

Characteristics include:

- Residuals centred around zero.
- Similar vertical spread across fitted values.
- No obvious curvature.

These characteristics suggest:

- Constant variance.
- Mean residual equal to zero.
- Appropriate model structure.

---

#### Recognising Problems

Not all residual plots indicate a suitable model.

Patterns that may indicate problems include:

| Pattern | Possible Issue |
|----------|----------------|
| Curved trend | Relationship is not linear |
| Funnel shape | Non-constant variance |
| Increasing spread | Heteroscedasticity |
| Clusters | Missing explanatory variables |
| Extreme points | Potential outliers or influential observations |

For example, if residuals are positive at low and high fitted values but negative in the middle, the model may be missing a nonlinear component.

---

#### Addressing Model Problems

Several approaches may improve the model:

##### Add Additional Terms

A curved residual pattern may indicate the need for polynomial terms:

```r
lm(y ~ x + I(x^2))
```

##### Transform the Response Variable

Transformations may stabilise variance and improve normality.

Common transformations include:

- Logarithmic transformation
- Square-root transformation
- Reciprocal transformation

##### Box-Cox Transformation

The Box-Cox transformation searches for an optimal power transformation of the response variable.

The transformed response is:

$$
Y^{(\lambda)}
=
\begin{cases}
\frac{Y^\lambda - 1}{\lambda}, & \lambda \neq 0 \\
\log(Y), & \lambda = 0
\end{cases}
$$

The objective is to improve:

- Normality.
- Constant variance.
- Overall model fit.

---

#### Example: Linear Regression Using the mtcars Dataset

Fit a regression model relating fuel economy to the number of cylinders and vehicle weight.

```r
attach(mtcars)

FIT1 <- lm(mpg ~ cyl + wt)

summary(FIT1)
```

---

#### Regression Coefficients

Extract the estimated regression coefficients:

```r
coef(FIT1)
```

Interpretation:

- The intercept is the predicted value of mpg when all predictors equal zero.
- Each coefficient represents the expected change in mpg for a one-unit increase in the predictor while holding other predictors constant.

---

#### Coefficient Significance

Display coefficient estimates, standard errors, test statistics, and p-values:

```r
summary(FIT1)$coefficients
```

For each coefficient:

$$
H_0 : \beta_i = 0
$$

$$
H_1 : \beta_i \neq 0
$$

Small p-values indicate that the predictor contributes significantly to the model.

---

#### Confidence Intervals

Calculate 95% confidence intervals:

```r
confint(FIT1)
```

These intervals provide a range of plausible values for each regression coefficient.

---

#### Akaike Information Criterion (AIC)

The AIC is commonly used for model comparison.

```r
AIC(FIT1)
```

Lower AIC values generally indicate a better balance between:

- Model fit.
- Model complexity.

AIC is only meaningful when comparing competing models fitted to the same dataset.

---

#### Testing Residuals for Normality

Calculate residuals from the fitted model:

```r
Residuals <- resid(FIT1)
```

Use the Shapiro-Wilk test:

```r
shapiro.test(Residuals)
```

##### Hypotheses

$$
H_0 : \text{Residuals are normally distributed}
$$

$$
H_1 : \text{Residuals are not normally distributed}
$$

Example interpretation:

```text
p-value = 0.06341
```

Since:

$$
0.06341 > 0.05
$$

there is insufficient evidence to reject the null hypothesis.

The residuals are therefore considered consistent with a normal distribution.

---

#### Diagnostic Plots in R

R provides four standard regression diagnostics automatically.

```r
par(mfrow = c(2,2))
plot(FIT1, pch = 18, col = "red", cex = 1.5)
par(mfrow = c(1,1))
```

The four plots are:

1. Residuals vs Fitted
2. Normal Q-Q
3. Scale-Location
4. Residuals vs Leverage

---

### 1. Residuals vs Fitted

Purpose:

- Assess linearity.
- Assess constant variance.

A suitable plot shows:

- Random scatter.
- No systematic pattern.

---

### 2. Normal Q-Q Plot

Purpose:

- Assess residual normality.

A suitable plot shows:

- Points approximately following the reference line.

Departures from the line may indicate:

- Skewness.
- Heavy tails.
- Outliers.

---

### 3. Scale-Location Plot

Purpose:

- Assess homoscedasticity.

A suitable plot shows:

- Equal vertical spread across fitted values.

A funnel-shaped pattern suggests non-constant variance.

---

### 4. Residuals vs Leverage

Purpose:

- Identify influential observations.

Observations with:

- High leverage.
- Large residuals.
- Large Cook's Distance

may have excessive influence on the fitted model.

---

#### Influential Observations

When examining diagnostic plots, note which observations are labelled by R.

Questions to consider:

- Which observations are identified as unusual?
- Which observations appear repeatedly across multiple plots?
- Are any observations influential according to all four diagnostics?

Observations repeatedly flagged across multiple diagnostic plots warrant further investigation.

---

#### Recommended Diagnostic Workflow

After fitting any regression model:

1. Inspect the residuals versus fitted plot.
2. Examine the Q-Q plot.
3. Review the Scale-Location plot.
4. Check leverage and Cook's distance.
5. Perform formal tests where appropriate.
6. Consider transformations or alternative models if assumptions are violated.

---

#### Key Point

A regression model should never be evaluated solely on the basis of an R-squared value or significant p-values. Good regression practice requires verification that the model assumptions are satisfied through a combination of diagnostic plots and formal statistical tests.


This section would bridge very naturally between your Week 6 regression material and the later topics on LOD/LOQ, Multiple Regression, and Robust Regression, because it introduces students to the idea that a model can fit statistically yet still fail diagnostic checks.