This lab aligns well with Module 3: Calibration, Linear Regression & Model Estimation and could be included as:

Lab 6A: Correlation Analysis and Simple Linear Regression in R

Below is a cleaned-up and expanded R Markdown version with additional commentary suitable for students.

---
title: "Lab 6A: Correlation Analysis and Simple Linear Regression in R"
subtitle: "MA4605 Chemometrics"
author: "Kevin O'Brien"
date: "`r Sys.Date()`"
output:
  html_document:
    toc: true
    toc_float: true
---

# Introduction

In this practical exercise we will investigate the relationship between the distance from a pollution source and measured mercury concentration in environmental samples.

The objectives of this laboratory are to:

- Calculate and interpret the Pearson correlation coefficient.
- Test the significance of the correlation.
- Create scatterplots of the data.
- Fit a simple linear regression model.
- Interpret regression coefficients.
- Visualise the fitted regression line.

---

# Dataset

The dataset contains:

- **Dist**: Distance from the source (km).
- **Merc**: Mercury concentration (arbitrary units).

```{r}
Dist <- c(1.4, 3.8, 7.5, 10.2, 11.7, 15.0)
Merc <- c(2.4, 2.5, 1.3, 1.3, 0.7, 1.2)
```

Display the data:

```{r}
data.frame(Dist, Merc)
```

---

# Visual Inspection

Before carrying out any statistical analysis it is good practice to inspect the data visually.

```{r}
plot(Dist, Merc)
```

### Discussion

Consider the following questions:

1. Does the relationship appear linear?
2. Does mercury concentration tend to increase or decrease with distance?
3. Are there any unusual observations?

Based on the plot, it appears that mercury concentration decreases as distance increases.

---

# Correlation Analysis

The Pearson correlation coefficient measures the strength and direction of a linear relationship between two variables.

```{r}
cor(Dist, Merc)
```

The correlation coefficient ranges between:

- -1 : Perfect negative linear relationship.
- 0 : No linear relationship.
- +1 : Perfect positive linear relationship.

---

# Significance Test for Correlation

We now test whether the observed correlation differs significantly from zero.

```{r}
cor.test(Dist, Merc)
```

### Hypotheses

$$
H_0 : \rho = 0
$$

$$
H_1 : \rho \neq 0
$$

where $\rho$ is the population correlation coefficient.

### Discussion

Examine:

- The correlation estimate.
- The p-value.
- The confidence interval.

If the p-value is less than 0.05, there is evidence of a statistically significant linear relationship.

---

# Fitting a Linear Regression Model

We now model mercury concentration as a function of distance.

The regression model is

$$
Merc = \beta_0 + \beta_1 Dist + \varepsilon
$$

where:

- $\beta_0$ is the intercept.
- $\beta_1$ is the slope.
- $\varepsilon$ is the random error term.

```{r}
myModel <- lm(Merc ~ Dist)
```

---

# Model Summary

The model summary provides:

- Estimated coefficients.
- Standard errors.
- t-tests.
- p-values.
- R-squared.

```{r}
summary(myModel)
```

### Discussion

Pay particular attention to:

- The estimated slope.
- The sign of the slope.
- The p-value for the slope.
- The R-squared value.

A negative slope indicates that mercury concentration decreases as distance increases.

---

# Regression Coefficients

Extract the estimated coefficients directly.

```{r}
coef(myModel)
```

### Interpretation

The intercept represents the predicted mercury concentration when distance equals zero.

The slope represents the expected change in mercury concentration for each one-unit increase in distance.

---

# Enhanced Scatterplot

Create a more informative scatterplot.

```{r}
plot(
  Dist,
  Merc,
  pch = 16,
  col = "red",
  cex = 1.5,
  xlab = "Distance",
  ylab = "Mercury Concentration",
  main = "Mercury Concentration vs Distance"
)
```

---

# Adding the Regression Line

Add the fitted regression line to the plot.

```{r}
plot(
  Dist,
  Merc,
  pch = 16,
  col = "red",
  cex = 1.5,
  xlab = "Distance",
  ylab = "Mercury Concentration",
  main = "Mercury Concentration vs Distance"
)

abline(myModel, col = "blue", lwd = 2)
```

### Discussion

The blue line represents the fitted linear model.

Observations close to the line have small residuals, while observations further from the line have larger residuals.

---

# Predicted Values

The fitted values are the model predictions.

```{r}
fitted(myModel)
```

Compare the fitted values with the original measurements.

---

# Residual Analysis

Residuals are the differences between observed and predicted values.

```{r}
residuals(myModel)
```

Plot the residuals:

```{r}
plot(
  fitted(myModel),
  residuals(myModel),
  pch = 16,
  col = "darkgreen",
  xlab = "Fitted Values",
  ylab = "Residuals",
  main = "Residual Plot"
)

abline(h = 0, lty = 2)
```

### Discussion

For a suitable linear model:

- Residuals should be randomly scattered around zero.
- No clear pattern should be visible.
- The spread should be approximately constant.

---

# Questions

1. What is the value of the Pearson correlation coefficient?
2. Is the correlation statistically significant?
3. What is the estimated regression equation?
4. What does the slope coefficient represent?
5. What proportion of variation is explained by the model?
6. Do the residuals suggest that a linear model is appropriate?

---

# Extension Exercise

Use the model to predict mercury concentration at:

- 5 km
- 8 km
- 12 km

Hint:

```{r}
predict(
  myModel,
  newdata = data.frame(Dist = c(5, 8, 12))
)
```

---

# Summary

In this laboratory you have:

- Calculated a Pearson correlation coefficient.
- Tested the statistical significance of the correlation.
- Created scatterplots.
- Fitted a simple linear regression model.
- Interpreted regression coefficients.
- Added a fitted regression line.
- Examined residuals.
- Generated predictions from the model.

These techniques form the foundation of calibration modelling and regression analysis used throughout analytical chemistry and chemometrics.


This is substantial enough for a 2-hour Week 6 lab session on calibration and simple linear regression.
