This material belongs in Module 2: Distribution Diagnostics, Normality Testing & Non-Parametric Equivalence, and would work best as a new subsection immediately after 2.1 Graphical Diagnostics and before 2.2 Formal Normality Tests. It directly supports the Week 4 lecture and lab on Q-Q plots, Shapiro-Wilk testing, and Anderson-Darling testing.

Suggested Section Title
##### 2.1.1 Assessing Normality in R

##### 2.1.1 Assessing Normality in R

### Testing for Normality

Many statistical procedures used in analytical chemistry assume that the underlying data are normally distributed. Before applying parametric methods, it is therefore important to assess whether the normality assumption is reasonable.

Normality can be assessed using:

- Histograms
- Boxplots
- Normal Probability (Q-Q) Plots
- Formal statistical tests

---

### The Shapiro-Wilk Test

The Shapiro-Wilk test is one of the most widely used formal tests for normality.

#### Hypotheses

$$
H_0: \text{The data are normally distributed}
$$

$$
H_1: \text{The data are not normally distributed}
$$

In R, the test is performed using:

```r
shapiro.test(Vec)
```

Example output:

```text
Shapiro-Wilk normality test

data: Vec

W = 0.9888
p-value = 0.5727
```

#### Interpretation

Since the p-value is much larger than 0.05, there is insufficient evidence to reject the null hypothesis.

Therefore, we conclude that the data are consistent with a normal distribution.

---

### Normal Probability (Q-Q) Plots

A Normal Probability Plot, also known as a Quantile-Quantile (Q-Q) plot, provides a graphical method for assessing normality.

In a Q-Q plot:

- Sample quantiles are plotted against theoretical normal quantiles.
- Normally distributed data should lie approximately on a straight line.
- Systematic departures from a straight line indicate departures from normality.

In R:

```r
qqnorm(Vec)
qqline(Vec)
```

where:

- `qqnorm()` creates the Q-Q plot.
- `qqline()` adds a reference line.

#### Interpretation

A dataset that follows a normal distribution will produce points that lie close to the reference line.

Common departures from normality include:

| Pattern | Interpretation |
|----------|---------------|
| S-shaped curve | Heavy or light tails |
| Curved pattern | Skewed distribution |
| Extreme points away from line | Potential outliers |

---

### Visual Assessment of Normality

Suppose a data file contains a single variable `y`.

First read the data into R:

```r
data <- read.table("data.txt", header = TRUE)
```

A quick summary can then be obtained using:

```r
summary(data$y)
```

---

### Boxplots

A boxplot provides a simple graphical summary of a dataset.

```r
boxplot(data$y,
        ylab = "Data Values",
        main = "Boxplot of y")
```

#### Interpretation

Evidence supporting normality includes:

- The median line is approximately centred within the box.
- The upper and lower whiskers have similar lengths.
- No obvious outliers are present.

These features suggest a reasonably symmetric distribution.

---

### Histograms

Histograms provide a visual representation of the overall shape of a distribution.

```r
hist(data$y,
     xlab = "y",
     main = "Histogram of y",
     col = "lightblue")
```

#### Interpretation

A normal distribution should appear:

- Symmetric.
- Bell-shaped.
- Unimodal.

Strong skewness, multiple peaks, or unusually long tails may indicate departures from normality.

---

### Q-Q Plots

Create a Q-Q plot using:

```r
qqnorm(data$y)
qqline(data$y, lty = 2)
```

#### Interpretation

If the points lie approximately along the diagonal reference line:

- The normality assumption is reasonable.
- No major departures from normality are evident.
- There are no obvious outliers.

---

### Formal Tests of Normality

Although graphical methods are important, formal hypothesis tests can also be used.

Common tests include:

- Shapiro-Wilk Test
- Anderson-Darling Test
- Kolmogorov-Smirnov Test

For some of these procedures the **nortest** package is required.

Install the package:

```r
install.packages("nortest")
```

Load the package:

```r
library(nortest)
```

---

### Anderson-Darling Test

The Anderson-Darling test places greater emphasis on departures in the tails of the distribution than some alternative normality tests.

#### Hypotheses

$$
H_0: \text{The data are normally distributed}
$$

$$
H_1: \text{The data are not normally distributed}
$$

In R:

```r
ad.test(data$y)
```

Example output:

```text
Anderson-Darling normality test

data: data$y

A = 0.1634
p-value = 0.9421
```

#### Interpretation

Since

$$
p = 0.9421 > 0.05
$$

there is insufficient evidence to reject the null hypothesis.

Therefore, the data can be considered consistent with a normal distribution.

---

### Kolmogorov-Smirnov Test

The Kolmogorov-Smirnov (K-S) test compares the empirical distribution of the sample with a specified theoretical distribution.

In R:

```r
ks.test(
  data$y,
  "pnorm",
  mean(data$y),
  sd(data$y)
)
```

#### Interpretation

As with the previous tests:

- A large p-value suggests the data are consistent with normality.
- A small p-value suggests departure from normality.

---

### Recommended Workflow

When assessing normality:

1. Begin with a histogram.
2. Examine a boxplot.
3. Construct a Q-Q plot.
4. Perform a Shapiro-Wilk or Anderson-Darling test.
5. Consider all evidence together rather than relying on a single test.

### Key Point

Formal tests should complement graphical methods rather than replace them. For small datasets, visual inspection using Q-Q plots is often one of the most informative methods for assessing normality.

