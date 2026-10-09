This belongs in Module 6: Design of Experiments (DoE) & Variance Reduction, specifically within the ANOVA section already implied by Week 12's coverage of ANOVA and experimental design.

I would place it as:

Module 6: Design of Experiments (DoE) & Variance Reduction

6.1 Fundamental Concepts
6.2 Blocking & Nuisance Variables

6.3 Analysis of Variance (ANOVA)
    6.3.1 Introduction to ANOVA
    6.3.2 One-Way ANOVA Calculations
    6.3.3 Multiple Comparisons and Least Significant Difference (LSD)

###### 6.3 Analysis of Variance (ANOVA)

#### Introduction

Analysis of Variance (ANOVA) is one of the most important statistical tools used in experimental design. The purpose of ANOVA is to determine whether observed variation in a response variable can be attributed to differences between treatment groups or is simply due to random variation.

More generally, ANOVA investigates how the total variation in a dataset can be partitioned into components associated with different sources of variation.

Topics typically include:

- One-way ANOVA
- Two-way ANOVA without interaction
- Two-way ANOVA with interaction
- Two-way ANOVA with replicates
- Factorial experimental designs

ANOVA forms the foundation of many experimental design methodologies used in chemistry, engineering, biology, and industrial quality control.

---

#### One-Way ANOVA

Suppose observations are collected from several treatment groups.

The hypotheses are:

$$
H_0 : \mu_1 = \mu_2 = \cdots = \mu_k
$$

$$
H_1 : \text{At least one group mean differs}
$$

ANOVA compares:

- Variation **between groups**
- Variation **within groups**

The resulting test statistic is

$$
F = \frac{\text{Mean Square Between}}{\text{Mean Square Within}}
$$

Large values of $F$ indicate evidence against the null hypothesis.

---

#### Example

Suppose the ANOVA calculations produce

$$
F = \frac{62}{3} \approx 20.7
$$

The critical value from an F-distribution with 3 and 8 degrees of freedom is:

```r
qf(0.95, 3, 8)
```

```text
[1] 4.066181
```

Since

$$
20.7 > 4.066
$$

the null hypothesis is rejected.

We conclude that there is evidence of a statistically significant difference between the group means.

---

#### Which Means Differ?

A significant ANOVA result only indicates that at least one mean differs.

It does not identify which groups are different.

Additional multiple-comparison procedures are required, such as:

- Least Significant Difference (LSD)
- Tukey's Honest Significant Difference (HSD)
- Bonferroni procedures

---

#### Least Significant Difference (LSD)

One of the simplest multiple-comparison methods is the **Least Significant Difference (LSD)** procedure.

The LSD is calculated as

$$
LSD = s \sqrt{\frac{2}{n}}t_{\alpha/2}
$$

where:

- $s^2$ is the pooled within-group variance estimate.
- $n$ is the number of observations per group.
- $t_{\alpha/2}$ is the appropriate Student's t critical value.

Example:

```r
sqrt(mean(s))*sqrt(2/3)*qt(0.975,8)
```

```text
[1] 3.261182
```

Group means may then be compared pairwise. Any difference exceeding the calculated LSD is considered statistically significant.

---

#### Example Group Means

```r
m <- apply(x, 1, mean)

m
```

```text
[1] 101 102 97 92
```

These means may be compared pairwise using the LSD criterion.

---

#### Degrees of Freedom in ANOVA

For a one-way ANOVA:

##### Between-Groups Degrees of Freedom

$$
df_{between} = h - 1
$$

where $h$ is the number of groups.

##### Within-Groups Degrees of Freedom

$$
df_{within}=h(n-1)
$$

where:

- $h$ = number of groups
- $n$ = observations per group

##### Total Degrees of Freedom

$$
df_{total}=hn-1
$$

These satisfy:

$$
hn-1=h(n-1)+h-1
$$

Example:

- Number of groups = 4
- Observations per group = 3

Therefore:

$$
df_{between}=4-1=3
$$

$$
df_{within}=4(3-1)=8
$$

$$
df_{total}=12-1=11
$$

---

#### Partitioning Variation

The total variation in the dataset can be partitioned into two components:

$$
SST = SSM + SSE
$$

where:

| Quantity | Description |
|-----------|------------|
| SST | Total Sum of Squares |
| SSM | Model (Between-Groups) Sum of Squares |
| SSE | Error (Within-Groups) Sum of Squares |

##### Total Sum of Squares

$$
SST = \sum_{i=1}^{N}(x_i-\bar{x})^2
$$

##### Model Sum of Squares

$$
SSM = \sum_{j=1}^{h} n_j(\bar{x}_j-\bar{x})^2
$$

##### Error Sum of Squares

$$
SSE = \sum_{j=1}^{h}\sum_{i=1}^{n_j}(x_{ij}-\bar{x}_j)^2
$$

The identity

$$
SST = SSM + SSE
$$

forms the basis of ANOVA.

---

#### One-Way ANOVA in R

Consider the following dataset:

```r
x <- c(
  102,100,101,
  101,101,104,
  97,95,99,
  90,92,94
)

factors <- c(
  rep("A",3),
  rep("B",3),
  rep("C",3),
  rep("D",3)
)

res <- aov(x ~ factors)

anova(res)
```

Output:

```text
Analysis of Variance Table

Response: x

            Df  Sum Sq Mean Sq F value Pr(>F)
factors      3     186      62   20.67 0.0004 ***
Residuals    8      24       3
```

---

#### Interpretation

The ANOVA table indicates:

- Between-group variation: 186
- Within-group variation: 24
- F-statistic: 20.67
- p-value: 0.0004

Because

$$
p < 0.05
$$

there is strong evidence that at least one treatment mean differs from the others.

---

#### Key Points

- ANOVA partitions variation into between-group and within-group components.
- The F-statistic compares explained variation to unexplained variation.
- A significant ANOVA result indicates that at least one group mean differs.
- Post-hoc procedures such as LSD or Tukey HSD are required to identify which groups differ.
- ANOVA provides the foundation for more advanced experimental design methods including factorial designs and blocking strategies.


This would become the core of Section 6.3 Analysis of Variance (ANOVA) in the revised MA4605 notes and links naturally to the existing experimental-design content in Module 6.