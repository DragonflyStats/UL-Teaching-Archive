# Chemometrics & Applied Data Analysis (Statistics 201)

**Course Code:** CHEM-201 / STAT-201

**Level:** Advanced Undergraduate / Postgraduate

**Primary Computing Environment:** R Programming Language

**Course Description:** An applied second-tier statistics module designed for analytical chemists, data engineers, and laboratory scientists. Building upon introductory statistical concepts, this course focuses on data quality control, distributional assumptions, outlier diagnostics, robust modeling, method comparison, calibration, statistical process control, and experimental design.

---

## Detailed Course Syllabus

### Module 1: Exploratory Data Analysis, Outlier Diagnostics & Transformations

This foundational module establishes rigorous protocols for inspecting raw analytical datasets before applying parametric models. Students learn to distinguish between random measurement noise and systematic outliers using visual, classical, and robust techniques.

#### 1.1 Visual Inspection & Exploratory Data Analysis

* **Box plots & Distribution Summaries:** Construction and interpretation of standard five-number summaries (minimum, $Q_1$, median, $Q_3$, maximum) and Interquartile Range ($\text{IQR} = Q_3 - Q_1$).
* **Outlier Fences:** Applying Tukey’s inner ($1.5 \times \text{IQR}$) and outer ($3.0 \times \text{IQR}$) fences to screen potential mild and extreme outliers visually.
* **Distribution Skewness & Heavy Tails:** Evaluating non-normality and asymmetry visually using kernel density estimates and histograms prior to formal testing.

#### 1.2 Formal Hypothesis Testing for Outliers

* **Grubbs' Test for Single Outliers:**
* **Null Hypothesis ($H_0$):** All data points are drawn from a normally distributed population.
* **Test Statistic:**

$$G = \frac{\max_{i} \vert{}x_i - \bar{x}\vert{}}{s}$$



where $\bar{x}$ is the sample mean and $s$ is the sample standard deviation.
* **Pen-and-Paper Calculations:** Hand computation using small analytical datasets, referencing critical $G$-tables based on sample size $n$ and significance level $\alpha$.
* **R Implementation:** Utilizing `outliers::grubbs.test()`.


* **Dixon’s Q Test for Small Sample Replicates:**
* **Application:** Ideal for small replicate sample sizes ($3 \le n \le 30$) common in wet chemistry and instrument validation.
* **Test Statistic:**

$$Q = \frac{\text{Gap}}{\text{Range}} = \frac{\vert{}x_{\text{suspect}} - x_{\text{nearest}}\vert{}}{x_{\max} - x_{\min}}$$


* Comparing calculated $Q$-values against critical $Q_{\text{crit}}$ values.


* **Masking and Swamping Effects:** Limitations of single-outlier tests when multiple outliers exist in small datasets.

#### 1.3 Data Transformations & Tukey’s Ladder of Powers

* **Tukey’s Ladder of Powers:** Systematic power transformations of the form $y^{(\lambda)}$:
* $\lambda = 2$: Square transformation ($y^2$) — compresses left skewness.
* $\lambda = 1$: Raw scale ($y$) — no transformation.
* $\lambda = 0.5$: Square root ($\sqrt{y}$) — stabilizes Poisson-like variance.
* $\lambda = 0$: Logarithmic ($\ln(y)$ or $\log_{10}(y)$) — handles right-skewed positive data.
* $\lambda = -1$: Reciprocal ($-1/y$) — severe power transformation.


* **Variance Stabilization:** Stabilizing heteroscedastic variance across analytical signal ranges prior to standard parametric testing.

---

### Module 2: Distribution Diagnostics, Normality Testing & Non-Parametric Equivalence

Parametric statistical tests assume that underlying populations follow a normal distribution. This module covers graphical and formal statistical methods for assessing normality, as well as non-parametric fallbacks when normality cannot be met or restored.

#### 2.1 Graphical Diagnostics

* **Normal Quantile-Quantile (Q-Q) Plots:**
* Plotting observed sample quantiles against theoretical standard normal quantiles ($Z$).
* **Diagnostic Interpretation:**
* *S-shaped curves:* Heavy-tailed or light-tailed distributions.
* *Bow-shaped curves:* Positive or negative skewness.
* *Systematic departures at extremes:* Presence of heavy tails or localized outliers.





#### 2.2 Formal Normality Tests

* **Shapiro-Wilk Test:**
* **Concept:** Assesses regression linearity between ordered sample values and standard normal quantiles.
* **Test Statistic $W$:** High sensitivity for small-to-moderate sample sizes ($n < 50$).
* **R Implementation:** `shapiro.test(x)`.


* **Anderson-Darling Test:**
* **Concept:** A modification of the Kolmogorov-Smirnov test that places increased statistical weight on the distribution tails.
* **R Implementation:** `nortest::ad.test(x)`.



#### 2.3 Non-Parametric Equivalence Tests

When data remain non-normal after transformation, distribution-free non-parametric equivalents are deployed:

* **Wilcoxon Signed-Rank Test:**
* **Parametric Equivalent:** Paired $t$-test / One-sample $t$-test.
* **R Implementation:** `wilcox.test(x, y, paired = TRUE)`.


* **Mann-Whitney U Test (Wilcoxon Rank-Sum Test):**
* **Parametric Equivalent:** Independent two-sample $t$-test.
* **R Implementation:** `wilcox.test(x, y, paired = FALSE)`.



---

### Module 3: Calibration, Linear Regression, Robust Modeling & Detection Limits

Calibration models link instrumental responses (e.g., peak area, absorbance) to analyte concentration. This module covers simple linear regression (SLR), multiple linear regression (MLR), robust alternatives, and the statistical calculation of detection limits.

#### 3.1 Linear Calibration & Model Estimation

* **Ordinary Least Squares (OLS):**
* Estimating model parameters for $y = \beta_0 + \beta_1 x + \varepsilon$:

$$\hat{\beta}_1 = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sum (x_i - \bar{x})^2}, \quad \hat{\beta}_0 = \bar{y} - \hat{\beta}_1 \bar{x}$$


* Residual Standard Error ($s_{y/x}$): Estimating residual variance around the calibration line:

$$s_{y/x} = \sqrt{\frac{\sum (y_i - \hat{y}_i)^2}{n - 2}}$$





#### 3.2 Multiple Linear Regression (MLR) & Model Selection

* **Model Fitting:** `lm(y ~ x1 + x2 + x3, data = df)`.
* **Akaike Information Criterion (AIC):**
* Balancing model goodness-of-fit against model complexity (penalty for additional parameters):

$$\text{AIC} = 2k - 2\ln(\hat{L})$$


* **R Implementation:** `AIC(model)` for comparing competing calibration models.


* **Multicollinearity & Variance Inflation Factor (VIF):** Evaluating collinearity between predictor variables.

#### 3.3 Limits of Detection (LOD) & Quantification (LOQ)

Deriving rigorous analytical thresholds from linear calibration parameters:

* **Limit of Detection (LOD):** The lowest analyte concentration reliably distinguished from baseline noise ($\alpha = 0.05$):

$$\text{LOD} = \frac{3.3 \cdot s_{y/x}}{b}$$



where $s_{y/x}$ is the residual standard error and $b$ is the calibration curve slope ($\hat{\beta}_1$).
* **Limit of Quantification (LOQ):** The lowest concentration quantifiable with acceptable precision and accuracy:

$$\text{LOQ} = \frac{10 \cdot s_{y/x}}{b}$$


* **Blank Variance ($s_b$) vs. Residual Variance ($s_{y/x}$):** Comparing signal-to-noise estimations using blank standard deviation vs. regression error across low concentrations.

#### 3.4 Robust Regression

* **Limitations of OLS:** High sensitivity of OLS estimates to leverage points and residual outliers.
* **M-Estimators & Huber Weights:** Downweighting extreme residual points iteratively using Huber or Bisquare weighting functions.
* **R Implementation:** `MASS::rlm(y ~ x, psi = psi.huber)`.

---

### Module 4: Method Comparison Studies

Assessing agreement between two distinct analytical methods, measurement techniques, or laboratory instruments (e.g., comparing a new rapid spectroscopic method against a reference HPLC assay).

#### 4.1 Pitfalls of Correlation & OLS

* **Why Pearson's $r$ is Insufficient:** High correlation ($r \approx 0.99$) measures association, not agreement. Two methods can correlate perfectly while having systematic bias.
* **Limitations of OLS in Comparison:** Standard OLS assumes zero error in the $X$-variable, which is violated when both methods contain measurement error.

#### 4.2 Bland-Altman Graphical Analysis

* **Plot Construction:**
* **$X$-axis:** Mean of paired measurements: $\frac{S_1 + S_2}{2}$
* **$Y$-axis:** Difference between paired measurements: $D = S_1 - S_2$


* **Diagnostic Features:**
* Visual inspection for constant bias, proportional bias (sloped trends), or heteroscedasticity (funneling spread as concentration increases).



#### 4.3 Limits of Agreement (LoA) & Confidence Intervals

* **Mean Bias ($\bar{d}$):**

$$\bar{d} = \frac{\sum (S_{1,i} - S_{2,i})}{n}$$


* **Standard Deviation of Differences ($s_d$):**

$$s_d = \sqrt{\frac{\sum (d_i - \bar{d})^2}{n - 1}}$$


* **95% Limits of Agreement (LoA):**

$$\text{LoA} = \bar{d} \pm 1.96 \cdot s_d$$



*(Assumes normal distribution of pairwise differences).*
* **Precision & Confidence Intervals (CI):**
* Constructing 95% confidence intervals around the estimated mean bias and around both upper/lower limits of agreement using the standard error of LoA:

$$\text{SE}(\text{LoA}) \approx \sqrt{\frac{3 \cdot s_d^2}{n}}$$





---

### Module 5: Statistical Process Control (SPC) & Quality Assurance

Monitoring analytical instrument stability, assay drift, and manufacturing process consistency over time.

#### 5.1 Control Charts for Variables

* **Shewhart Control Charts:**
* **$\bar{X}$ (Mean) Chart:** Monitoring process central tendency.
* **$R$ (Range) Chart & $S$ (Standard Deviation) Chart:** Monitoring process variability.


* **Control Limits:** Upper Control Limit (UCL) and Lower Control Limit (LCL) set at $\pm 3\sigma$:

$$\text{UCL} = \bar{\bar{X}} + 3 \frac{\bar{S}}{c_4 \sqrt{n}}, \quad \text{LCL} = \bar{\bar{X}} - 3 \frac{\bar{S}}{c_4 \sqrt{n}}$$


* **R Implementation:** Using the `qcc` package (`qcc(data, type = "xbar")`).

#### 5.2 Western Electric Company (WECO) Rules

Detecting non-random patterns, systemic shifts, and out-of-control conditions:

1. **Rule 1:** 1 point beyond Zone A ($> 3\sigma$ from center line).
2. **Rule 2:** 9 consecutive points on one side of the center line (Zone C or beyond).
3. **Rule 3:** 6 consecutive points steadily increasing or decreasing (trend).
4. **Rule 4:** 14 consecutive points alternating up and down.
5. **Rule 5:** 2 out of 3 consecutive points in Zone A ($> 2\sigma$).
6. **Rule 6:** 4 out of 5 consecutive points in Zone B or beyond ($> 1\sigma$).

#### 5.3 Process Capability Indices

Quantifying whether a process operates within specified engineering/analytical tolerance limits (Lower Specification Limit $LSL$, Upper Specification Limit $USL$):

* **Potential Capability ($C_p$):** Process spread relative to specification width (assumes centered process):

$$C_p = \frac{USL - LSL}{6\sigma}$$


* **Actual Capability ($C_{pk}$):** Accounting for process off-centering:

$$C_{pk} = \min\left( \frac{USL - \mu}{3\sigma}, \frac{\mu - LSL}{3\sigma} \right)$$


* **Overall Performance Indices ($P_p, P_{pk}$):** Using total process sample variation ($s$) rather than within-batch variation ($\sigma_{\text{within}}$).

---

### Module 6: Design of Experiments (DoE) & Variance Reduction

Optimizing experimental workflows, screening influential parameters, and isolating nuisance sources of variation.

#### 6.1 Fundamental Concepts

* **Factors & Levels:** Independent variables controlled during the experiment and their discrete set points.
* **Responses:** Dependent experimental outcomes measured (e.g., yield, signal-to-noise ratio).
* **Core Principles:**
* **Randomization:** Guarding against unobserved systematic bias.
* **Replication:** Estimating pure experimental error ($s_{\text{pure err}}$).



#### 6.2 Blocking & Nuisance Variables

* **Concept of Blocking:** Grouping homogeneous experimental units to isolate known, non-pertinent sources of variation (e.g., reagent batch, day-to-day drift, operator differences).
* **Randomized Complete Block Design (RCBD):** Partitioning total variance into treatment effects, block effects, and random error:

$$SS_{\text{Total}} = SS_{\text{Treatments}} + SS_{\text{Blocks}} + SS_{\text{Error}}$$


* **ANOVA Table Analysis:** Testing treatment effects after controlling for block-to-block variability.

---