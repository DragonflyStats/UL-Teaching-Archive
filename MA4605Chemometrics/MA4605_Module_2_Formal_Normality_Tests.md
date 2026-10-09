This belongs in Module 2: Distribution Diagnostics, Normality Testing & Non-Parametric Equivalence, immediately after the existing introduction to normality assessment and before the R implementation examples. It directly supports the Week 4 material on normality testing.

###### 2.2.1 Kolmogorov-Smirnov, Anderson-Darling and Shapiro-Wilk Tests

#### Goodness-of-Fit Tests for Normality

Many statistical procedures assume that data are drawn from a particular probability distribution, most commonly the normal distribution.

Goodness-of-fit tests provide formal methods for comparing observed data with a theoretical distribution.

Three commonly used procedures are:

- Kolmogorov-Smirnov (K-S) Test
- Anderson-Darling Test
- Shapiro-Wilk Test

---

## Kolmogorov-Smirnov Test

The Kolmogorov-Smirnov (K-S) test evaluates how closely the empirical distribution of a sample matches a specified theoretical distribution.

### Hypotheses

$$
H_0 : \text{The data follow the specified distribution}
$$

$$
H_1 : \text{The data do not follow the specified distribution}
$$

---

### Test Statistic

The K-S test statistic is based on the maximum difference between:

- The empirical cumulative distribution function (ECDF).
- The theoretical cumulative distribution function (CDF).

The statistic is

$$
D = \sup_x |F_n(x)-F(x)|
$$

where:

- $F_n(x)$ is the empirical cumulative distribution function.
- $F(x)$ is the theoretical cumulative distribution function.

Large values of $D$ indicate poor agreement between the sample and the theoretical distribution.

---

### Important Requirements

The reference distribution must:

- Be continuous.
- Be fully specified.

Examples of continuous distributions include:

- Normal
- Exponential
- Weibull

Discrete distributions such as:

- Binomial
- Poisson

are not suitable for the classical K-S test.

---

### Advantages of the K-S Test

The K-S test has several attractive features:

- It is an exact test.
- It does not rely on large-sample approximations.
- Its distribution is independent of the underlying continuous distribution being tested.

---

### Limitations of the K-S Test

Despite its usefulness, several limitations should be noted.

1. It applies only to continuous distributions.

2. The test is most sensitive near the centre of the distribution and less sensitive in the tails.

3. The distribution must be completely specified.

If parameters such as:

- Mean
- Standard deviation
- Shape parameters

are estimated from the sample itself, the standard K-S critical values are no longer strictly valid and alternative approaches may be required.

Because of these limitations, many analysts prefer the Anderson-Darling test when assessing normality.

---

## Anderson-Darling Test

The Anderson-Darling (A-D) test is a modification of traditional goodness-of-fit tests that places greater emphasis on deviations occurring in the tails of a distribution.

The test assesses whether evidence exists that a sample did not originate from a specified probability distribution.

### Hypotheses

$$
H_0 : \text{The data follow the specified distribution}
$$

$$
H_1 : \text{The data do not follow the specified distribution}
$$

---

### Why Use Anderson-Darling?

Compared with the K-S test, the Anderson-Darling procedure:

- Places more weight on tail behaviour.
- Has greater sensitivity to departures from normality.
- Performs particularly well for detecting skewness and heavy tails.

For normality assessment, it is widely regarded as one of the most powerful goodness-of-fit procedures available.

---

### Limitations

The Anderson-Darling test is not available for every probability distribution.

Unlike the K-S test, implementations are generally provided only for specific distributions such as:

- Normal
- Exponential
- Weibull
- Logistic

depending on the software package being used.

---

## Shapiro-Wilk Test

The Shapiro-Wilk test is one of the most widely used and powerful tests for assessing normality.

It is particularly effective for small and moderate sample sizes.

### Hypotheses

$$
H_0 : \text{The data are normally distributed}
$$

$$
H_1 : \text{The data are not normally distributed}
$$

---

### Example 1: Normally Distributed Data

Generate a sample from a normal distribution:

```r
x <- rnorm(100, mean = 5, sd = 3)

shapiro.test(x)
```

Output:

```text
Shapiro-Wilk normality test

data: x

W = 0.9818
p-value = 0.1834
```

### Interpretation

Since

$$
p = 0.1834 > 0.05
$$

there is insufficient evidence to reject the null hypothesis.

The data are therefore considered consistent with a normal distribution.

---

### Example 2: Non-Normal Data

Generate data from a uniform distribution:

```r
y <- runif(100, min = 2, max = 4)

shapiro.test(y)
```

Output:

```text
Shapiro-Wilk normality test

data: y

W = 0.9499
p-value = 0.0008215
```

### Interpretation

Since

$$
p = 0.0008215 < 0.05
$$

the null hypothesis is rejected.

There is strong evidence that the dataset does not follow a normal distribution.

---

## Comparison of the Tests

| Test | Primary Purpose | Strengths | Limitations |
|--------|---------|---------|---------|
| Kolmogorov-Smirnov | General goodness-of-fit | Exact test, distribution-free for fully specified distributions | Less sensitive in tails |
| Anderson-Darling | Goodness-of-fit with emphasis on tails | Highly sensitive to departures from normality | Limited distribution support |
| Shapiro-Wilk | Testing normality | Very powerful for small and moderate samples | Normality only |

---

## Recommended Practice

When assessing normality:

1. Begin with graphical methods such as histograms and Q-Q plots.
2. Apply a formal test such as Shapiro-Wilk or Anderson-Darling.
3. Consider both graphical and numerical evidence.
4. Avoid relying solely on a p-value.

### Key Point

For most practical normality assessments in this module:

- **Shapiro-Wilk** should be regarded as the default formal test.
- **Anderson-Darling** is often preferred when tail behaviour is of particular importance.
- **Kolmogorov-Smirnov** provides a useful general goodness-of-fit framework but is usually less powerful for detecting departures from normality.


Suggested location: immediately after "##### 2.2 Formal Normality Tests" in MA4605_Course_Material.md and before "##### 2.3 Non-Parametric Equivalence Tests".