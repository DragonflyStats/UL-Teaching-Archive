For a GitHub repository I would not keep this as one large chapter. It mixes:

Introductory chemometrics
Outlier detection
Normality testing
Linear models
Statistical inference
Hypothesis testing
Confidence intervals
Sample size determination

A cleaner approach would be to reorganise it into logical sections while preserving almost all of the original content. The version below is designed as a repository draft markdown file.

# Chemometrics Foundations

This document contains supporting material for core statistical concepts used throughout chemometrics, analytical chemistry, calibration modelling, regression analysis, and statistical inference.

---

# 1. Statistical Assumptions

Many chemometric methods rely on assumptions regarding:

- Normality
- Independence
- Constant variance
- Linearity

The simple linear regression model is

$$
\hat{Y} = b_0 + b_1X
$$

where:

| Symbol | Meaning |
|----------|----------|
| $\hat{Y}$ | Predicted value of the response variable |
| $b_0$ | Intercept estimate |
| $b_1$ | Slope estimate |
| $X$ | Independent variable |

Example:

$$
\hat{F}=1.518 + 1.930C
$$

---

# 2. Exploratory Data Analysis and Outliers

## Overview

Topics covered:

- Normal probability plots
- Outlier detection
- Dixon's Q Test
- Grubbs' Test

---

## Dixon's Q Test

Dixon's Q test is used to identify a potential outlier in a small dataset.

The observations should first be arranged in ascending order.

The test statistic is:

$$
Q = \frac{\text{Gap}}{\text{Range}}
$$

where:

- **Gap** = difference between the suspected outlier and its nearest neighbour.
- **Range** = difference between the largest and smallest values in the sample.

Decision rule:

$$
Q_{calculated} > Q_{critical}
$$

If true, the observation may be rejected as an outlier.

> Dixon's Q Test should generally be applied only once to a dataset.

---

# 3. Testing for Normality

Assessment of normality is an important prerequisite for many parametric statistical procedures.

Normality can be assessed using:

- Histograms
- Boxplots
- Normal Probability (Q-Q) Plots
- Formal hypothesis tests

Formal tests include:

- Shapiro-Wilk Test
- Anderson-Darling Test
- Kolmogorov-Smirnov Test

---

# 4. Linear Models

## Multiple Linear Regression

Multiple linear regression extends simple linear regression by incorporating multiple explanatory variables.

Example regression output:

```text
           Coefficients  Std Error    t Stat      P-value
Intercept  0.002107      0.004787     0.440144    0.678209
Conc       0.025164      0.000266     94.76047    2.48E-09
```

The coefficient estimates represent:

- Intercept estimate
- Slope estimate(s)

---

## Variable Selection Procedures

Important concepts include:

- Akaike Information Criterion (AIC)
- Multicollinearity
- Parsimonious modelling

---

## Confidence Interval for a Slope

Example:

| Quantity | Value |
|-----------|-----------|
| Slope Estimate | 0.025164 |
| Standard Error | 0.000266 |
| Critical Value | ±2.57 |

Lower limit:

$$
0.025164 - 2.57(0.000266)
=
0.0243
$$

Upper limit:

$$
0.025164 + 2.57(0.000266)
=
0.0257
$$

Thus:

$$
95\% \text{ CI } = [0.0243,\,0.0257]
$$

---

# 5. Regression Models

## Homoscedasticity

Ordinary least squares (OLS) regression assumes:

- Constant variance of residuals across the measurement range.

This property is known as **homoscedasticity**.

---

## Heteroscedasticity

When variability changes across the measurement range, the residual variance is not constant.

This is known as **heteroscedasticity**.

In such situations:

- Weighted regression may be preferred.
- Additional information regarding measurement variance is required.

---

## Coefficient of Determination (R²)

The coefficient of determination measures the proportion of variation explained by a model.

When comparing competing models:

- Higher adjusted R² is generally preferred.
- Simpler models should also be considered.

A model with the highest R² is not necessarily the best model.

---

# 6. Probability Models

## Poisson Distribution Example

A computer server breaks down on average once every three months.

Questions:

1. What is the probability that the server breaks down three times in a quarter?
2. What is the probability that the server breaks down five times in a year?

---

# 7. Statistical Inference

Statistical inference uses sample data to draw conclusions regarding population parameters.

Topics include:

- Hypothesis testing
- Confidence intervals
- Sample size calculations

---

# 8. Sample Size Estimation

### Example 1

The population standard deviation is known to be:

$$
\sigma = 12.5
$$

Determine the sample size required so that the sample mean is within 1.5 units of the population mean with 95% confidence.

---

### Example 2

The population standard deviation is known to be:

$$
\sigma = 8.5
$$

Determine the sample size required so that the sample mean is within 1.5 units of the population mean with 90% confidence.

---

# 9. Confidence Intervals

## Example

A sample of 15 observations has:

- Sample mean = 94.2
- Sample variance = 24.86

Construct a 99% confidence interval for the population mean.

### Solution

Given:

$$
t_{(14,0.005)}=2.977
$$

Therefore:

$$
94.2 \pm 2.977\sqrt{\frac{24.86}{15}}
$$

giving:

$$
94.2 \pm 3.83
$$

or

$$
(90.37,\;98.03)
$$

---

# 10. Hypothesis Testing

## One-Sample and Two-Sample Tests

Common hypothesis tests include:

- One-sample t-tests
- Two-sample t-tests
- Paired t-tests
- Tests for proportions

---

## Example: Difference Between Two Means

Hypotheses:

$$
H_0:\mu_1=\mu_2
$$

$$
H_1:\mu_1\neq\mu_2
$$

Test statistic:

$$
TS=
\frac{(\bar{x}_1-\bar{x}_2)}
{\sqrt{\frac{\sigma_1^2}{n_1}+\frac{\sigma_2^2}{n_2}}}
$$

Example R code:

```r
TS <- ((xbar1-xbar2)-0)/
      sqrt((sd1^2/n1)+(sd2^2/n2))
```

---

# 11. Paired t-Test

For paired observations, analysis is performed on the differences.

Mean difference:

$$
\bar{d}
=
\frac{\sum d_i}{n}
$$

Standard deviation:

$$
S_d
=
\sqrt{\frac{\sum(d_i-\bar d)^2}{n-1}}
$$

Hypotheses:

$$
H_0 : \mu_d = 0
$$

$$
H_1 : \mu_d \neq 0
$$

---

# 12. Worked Examples

The following worked examples may be retained as revision exercises:

- Buffer pH confidence interval calculations
- Salt bag weight confidence intervals
- Soldier marksmanship paired-data example
- Television-viewing proportion comparison
- Cereal advertisement effectiveness study
- Medical treatment effectiveness study

These examples provide practice in:

- Confidence intervals
- Hypothesis testing
- Proportion testing
- Paired data analysis
- Interpreting p-values


This structure makes the document much easier to review later because it separates Chemometrics, Regression, Probability Models, and Statistical Inference into clearly defined sections while retaining the original content.
