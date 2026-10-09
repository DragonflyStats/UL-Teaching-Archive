## Chemometrics & Applied Data Analysis (Statistics 201)

### 12-Week Course & Laboratory Schedule

**Course Code:** CHEM-201 / STAT-201

**Format:** 2 Lectures (1 hr each) + 1 Practical Computer Lab (2 hrs) per week

**Software:** R (RStudio environment)

---

## Week-by-Week Schedule

### Week 1: Introduction to Chemometrics & Data Inspection

* **Lectures:**
* Course orientation: Role of statistics in analytical chemistry and process data.
* Structure of analytical data, types of measurement errors, and introductory EDA.
* Five-number summaries, Interquartile Range ($\text{IQR}$), and box plots.


* **Lab 1:** Introduction to R for data inspection (`summary()`, base R graphics, box plot construction, and identifying Tukey's $1.5 \times \text{IQR}$ outliers).

---

### Week 2: Classical & Small-Sample Outlier Testing

* **Lectures:**
* Single-outlier detection: Grubbs' test logic, $G$ statistic, and hypothesis testing framing.
* Small-sample replicate testing: Dixon's $Q$ test ($\text{Gap}/\text{Range}$).
* Limitations of outlier tests: Masking and swamping phenomena.


* **Lab 2:** Pen-and-paper worked examples of Grubbs' $G$ and Dixon's $Q$ tests, followed by R implementation using `outliers::grubbs.test()`.

---

### Week 3: Data Transformations & Tukey’s Ladder of Powers

* **Lectures:**
* Skewed distributions and heteroscedasticity in analytical instrumentation.
* Tukey’s Ladder of Powers: Power transformations ($y^2, \sqrt{y}, \ln(y), -1/y$).
* Choosing transformations for variance stabilization.


* **Lab 3:** Applying power transformations in R, inspecting density plots before/after transformation, and verifying symmetry.

---

### Week 4: Graphical Diagnostics & Normality Testing

* **Lectures:**
* Quantile-Quantile (Q-Q) plots: Theory and pattern recognition (skewness, heavy/light tails).
* Formal normality testing: Shapiro-Wilk test ($W$ statistic) and Anderson-Darling test.
* When to transform vs. when to transition to non-parametric methods.


* **Lab 4:** Generating Q-Q plots, evaluating normality with `shapiro.test()` and `nortest::ad.test()`, and writing formal diagnostic conclusions.

---

### Week 5: Non-Parametric Equivalents

* **Lectures:**
* Distribution-free methods: Principles of ranking vs. raw values.
* Wilcoxon Signed-Rank test (paired samples).
* Mann-Whitney U test / Wilcoxon Rank-Sum test (independent samples).


* **Lab 5:** Implementing `wilcox.test()` in R for paired and independent analytical datasets; comparing results directly against parametric $t$-tests.

---

### Week 6: Calibration & Simple Linear Regression

* **Lectures:**
* Ordinary Least Squares (OLS) estimation for calibration curves ($y = \beta_0 + \beta_1 x + \varepsilon$).
* Calculating slope ($\hat{\beta}_1$), intercept ($\hat{\beta}_0$), and Residual Standard Error ($s_{y/x}$).
* Mid-term review of foundational modules.


* **Lab 6:** Fitting linear calibration curves in R using `lm()`, extracting coefficients, and visualizing regression confidence bands.

---

### Week 7: Limits of Detection (LOD) & Quantification (LOQ)

* **Lectures:**
* Signal-to-noise ratios and regulatory definitions of analytical detection limits.
* Statistical derivation of LOD ($3.3 \cdot s_{y/x} / b$) and LOQ ($10 \cdot s_{y/x} / b$).
* Blank standard deviation ($s_b$) vs. regression residual error ($s_{y/x}$).


* **Lab 7:** Writing custom R functions to compute LOD and LOQ directly from `lm()` regression objects across multi-analyte calibration runs.

---

### Week 8: Multiple Linear Regression & Model Selection

* **Lectures:**
* Extending linear models to multi-variable datasets ($y = \beta_0 + \beta_1 x_1 + \beta_2 x_2 + \dots$).
* Model selection criteria: Akaike Information Criterion (AIC) and Adjusted $R^2$.
* Diagnostics: Multicollinearity and Variance Inflation Factor (VIF).


* **Lab 8:** Building multiple regression models in R, running model selection via `AIC()`, and calculating VIF using the `car` package.

---

### Week 9: Robust Regression & Outlier Mitigation

* **Lectures:**
* Sensitivity of OLS to leverage points and extreme residual outliers.
* Robust estimators: M-estimation, Huber weights, and bisquare weighting functions.
* Interpreting robust regression coefficients vs. OLS.


* **Lab 9:** Fitting robust regression models in R using `MASS::rlm()` and comparing residual weights against standard `lm()` outputs.

---

### Week 10: Method Comparison Studies & Bland-Altman Analysis

* **Lectures:**
* Why Pearson correlation ($r$) fails as a test of measurement agreement.
* Bland-Altman plots: Constructing difference vs. mean plots ($S_1 - S_2$ vs. $(S_1 + S_2)/2$).
* Calculating Mean Bias ($\bar{d}$), 95% Limits of Agreement ($\text{LoA} = \bar{d} \pm 1.96 \cdot s_d$), and confidence intervals.


* **Lab 10:** Constructing Bland-Altman plots using base graphics and `ggplot2`/`BlandAltmanLeh`, including annotated bias lines and LoA confidence bands.

---

### Week 11: Statistical Process Control (SPC) & Capability Analysis

* **Lectures:**
* Variable control charts: $\bar{X}$, $R$, and $S$ charts ($\pm 3\sigma$ control limits).
* Western Electric Company (WECO) rules for out-of-control pattern detection.
* Process capability indices: $C_p$, $C_{pk}$, $P_p$, and $P_{pk}$.


* **Lab 11:** Generating control charts and capability reports in R using the `qcc` package; evaluating batch quality datasets against WECO rules.

---

### Week 12: Design of Experiments (DoE), Blocking & Course Synthesis

* **Lectures:**
* Fundamentals of DoE: Factors, levels, responses, randomization, and replication.
* Nuisance variables and Randomized Complete Block Designs (RCBD).
* Two-way ANOVA for treatment and block effects.


* **Lab 12:** Analyzing RCBD experimental data in R using `aov()`, interpreting ANOVA tables, and comprehensive course review.

---