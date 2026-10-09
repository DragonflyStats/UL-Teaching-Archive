This would fit naturally as Section 1.2: Formal Hypothesis Testing for Outliers within Module 1: Exploratory Data Analysis, Outlier Diagnostics & Transformations in MA4605_Course_Material.md.

##### 1.2.1 Outlier Detection Using Grubbs' and Dixon's Tests

### Outliers

In laboratory sciences, it is quite common for an outlying measurement to arise from faulty instrumentation, contamination, transcription errors, or other procedural problems.

> **Important:** Care must be taken to establish whether an unusual observation is truly an outlier or a genuine but rare observation from the population of interest.

As a matter of good statistical practice, outliers should not be removed automatically. A useful approach is to perform an analysis both with and without the suspected outlier and report both sets of results.

There may be one or more outliers present in a dataset. Several formal hypothesis tests can be used to determine whether an observation is statistically inconsistent with the remainder of the sample.

The two tests considered in this course are:

- Grubbs' Test
- Dixon's Q Test

**Remark:** Several variants of Grubbs' Test exist. Three important variants are outlined below.

---

### Grubbs' Test

Grubbs' Test is a family of statistical procedures designed to detect outliers in samples drawn from a normal distribution.

Key points:

- The test assumes that the data follow a normal distribution.
- It is not appropriate for highly skewed or asymmetric distributions (e.g. log-normal distributions).
- The test may be applied to the minimum value, the maximum value, or both.
- The test returns a p-value that quantifies the evidence that an observation is an outlier.

---

### Grubbs' Test: First Variant

The first variant is used to determine whether a dataset contains a single outlier that differs significantly from the remaining observations.

> **Important:** Unless stated otherwise, this is the variant assumed throughout the module. It is also the only variant that will be used with R.

The test statistic is

$$
G = \frac{\max|Y_i-\bar{Y}|}{S}
$$

where:

- $\bar{Y}$ is the sample mean
- $S$ is the sample standard deviation

The calculated value of $G$ is compared with a critical value determined by:

- The sample size, $n$
- The chosen significance level, $\alpha$

The procedure:

1. Calculate the sample mean.
2. Identify the most extreme observation.
3. Compute its distance from the mean.
4. Divide by the sample standard deviation.
5. Compare the resulting $G$ statistic to the appropriate critical value.

Characteristics of the test:

- Based on the difference between the sample mean and the most extreme observation.
- Detects one outlier at a time.
- Assumes a normally distributed population.
- Becomes less reliable for larger sample sizes (approximately $n > 25$).

The test is closely related to the one-sample Student's t-test through its use of sample means and standard deviations.

---

### Grubbs' Test: Second and Third Variants

#### Second Variant

The second variant tests whether the **lowest and highest observations are both outliers simultaneously**, occurring on opposite tails of the distribution.

The test is based on the ratio of the sample range to the sample standard deviation.

#### Third Variant

The third variant investigates whether **two outliers occur on the same tail** of the distribution.

This procedure compares the variance of the complete dataset with the variance after removing the two most extreme observations.

---

### Review of Grubbs' Test

Students should be able to:

- Describe the three variants of Grubbs' Test.
- Outline the algorithm used in the first variant.
- State the null and alternative hypotheses.
- Describe the assumptions and limitations of the procedure.

#### Hypotheses

For all variants:

**Null Hypothesis ($H_0$)**

> No outliers are present in the dataset.

**Alternative Hypothesis ($H_1$)**

> One or more observations are outliers, according to the variant being tested.

---

### Outlier Testing in R

Functions for outlier detection are available in the **outliers** package.

Install the package using:

```r
install.packages("outliers")
```

Then load it into the current R session:

```r
library(outliers)
```

> **Important:** Only the main (first) variant of Grubbs' Test will be considered when using R.

---

### Grubbs' Test Example

```r
library(outliers)

x <- c(
  0.403, 0.410, 0.401, 0.380,
  0.400, 0.413, 0.408
)

grubbs.test(x)
```

Example output:

```text
Grubbs test for one outlier

data:  x
G = 1.4316, U = 0.0892
p-value = 0.09124

alternative hypothesis:
lowest value 0.38 is an outlier
```

Since the p-value is greater than 0.05, there is insufficient evidence to conclude that an outlier is present at the 5% significance level.

---

### Dixon's Q Test

Dixon's Q Test is another commonly used procedure for identifying a single outlier in small samples.

The hypotheses are identical to those used in Grubbs' Test:

- $H_0$: No outlier is present.
- $H_1$: An outlier is present.

#### Example

```r
library(outliers)

x <- c(
  0.403, 0.410, 0.401, 0.380,
  0.400, 0.413, 0.408
)

dixon.test(x)
```

Example output:

```text
Dixon test for outliers

data: x
Q = 0.7
p-value = 0.1721

alternative hypothesis:
lowest value 0.38 is an outlier
```

Again, the p-value exceeds 0.05, so there is insufficient evidence to conclude that an outlier is present.

---

### Limitations

Several important limitations should be noted:

- Many procedures in the **outliers** package are designed for small sample sizes.
- All formal outlier tests are sensitive to departures from normality.
- A statistically significant outlier is not necessarily an experimental error.
- Outlier tests should support, not replace, scientific judgement.
- Multiple outliers can mask one another, reducing the effectiveness of single-outlier procedures.

### Summary

The principal outlier tests covered in this module are:

| Test | Purpose | Typical Use |
|--------|----------|-------------|
| Grubbs' Test | Detect a single outlier in normally distributed data | Small to moderate sample sizes |
| Dixon's Q Test | Detect a single outlier in small samples | Replicate laboratory measurements |
| Grubbs' Second Variant | Detect two outliers on opposite tails | Specialised applications |
| Grubbs' Third Variant | Detect two outliers on the same tail | Specialised applications |

In this module, only the **first (single-outlier) variant of Grubbs' Test** and **Dixon's Q Test** will be implemented in R.


I would place this immediately after "##### 1.2 Formal Hypothesis Testing for Outliers" and before "##### 1.3 Data Transformations & Tukey's Ladder of Powers" in MA4605_Course_Material.md.