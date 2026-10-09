This material belongs in Module 6: Design of Experiments (DoE) & Variance Reduction, expanding the ANOVA content already present in the course structure and supporting Week 12's focus on experimental design and ANOVA.

###### 6.3.4 Two-Factor Analysis of Variance (Two-Way ANOVA)

#### Introduction

A two-factor analysis of variance (two-way ANOVA) extends the one-way ANOVA framework by investigating the effects of two explanatory factors simultaneously.

A two-factor ANOVA typically involves three hypothesis tests:

1. A test of the first main effect.
2. A test of the second main effect.
3. A test of the interaction between the two factors.

The results are usually summarised using an ANOVA table.

---

#### Example ANOVA Table

Consider an experiment examining the effects of:

- **Task Type (T)**
- **Drug Dosage (D)**

on the time required to complete a task.

```text
                 Sum of        Mean
SOURCE   df      Squares      Square      F       p

T         1    47125.3333   47125.3333  384.174   0.000
D         2       42.6667      21.3333    0.174   0.841
TD        2     1418.6667     709.3333    5.783   0.006
ERROR    42     5152.0000     122.6667
TOTAL    47    53738.6667
```

The three tests correspond to:

- Task effect (T)
- Dosage effect (D)
- Task × Dosage interaction (TD)

---

### Sources of Variation

The ANOVA table partitions total variation into several components.

For this example the sources of variation are:

1. **Task**
2. **Drug Dosage**
3. **Task × Dosage Interaction**
4. **Experimental Error**

Each source accounts for part of the total variability in the response variable.

---

### Degrees of Freedom

The degrees of freedom provide information about how much independent information is available for estimating each source of variation.

#### Total Degrees of Freedom

The total degrees of freedom are:

$$
df_{Total}=N-1
$$

where $N$ is the total number of observations.

In this experiment:

- 6 treatment combinations
- 8 observations per combination

giving

$$
N=48
$$

and therefore

$$
df_{Total}=48-1=47
$$

---

#### Main Effect Degrees of Freedom

The degrees of freedom for a factor are:

$$
df = \text{number of levels}-1
$$

##### Task

There are two levels:

- Simple task
- Complex task

Therefore

$$
df_{Task}=2-1=1
$$

##### Drug Dosage

There are three dosage levels:

- 0 mg
- 100 mg
- 200 mg

Therefore

$$
df_{Dosage}=3-1=2
$$

---

#### Interaction Degrees of Freedom

The degrees of freedom for an interaction equal the product of the component degrees of freedom.

$$
df_{Interaction}
=
df_{Task} \times df_{Dosage}
$$

Thus

$$
df_{Interaction}
=
1 \times 2
=
2
$$

---

#### Error Degrees of Freedom

The error degrees of freedom are obtained by subtraction:

$$
df_{Error}
=
df_{Total}
-
df_{Task}
-
df_{Dosage}
-
df_{Interaction}
$$

Therefore

$$
df_{Error}
=
47-1-2-2
=
42
$$

---

### Mean Squares

A mean square is computed by dividing a sum of squares by its corresponding degrees of freedom.

$$
MS
=
\frac{SS}{df}
$$

For the dosage factor:

$$
MS_{Dosage}
=
\frac{42.6667}{2}
=
21.3333
$$

The same approach is used for each source of variation in the ANOVA table.

---

### F Ratios

The F statistic for an effect is calculated as:

$$
F
=
\frac{MS_{Effect}}{MS_{Error}}
$$

The F statistic compares:

- Variation explained by the factor.
- Unexplained variation (error).

Large F values suggest that the factor contributes significantly to explaining variation in the response.

---

#### Example: Interaction Effect

For the Task × Dosage interaction:

$$
MS_{Interaction}
=
709.3333
$$

$$
MS_{Error}
=
122.6667
$$

Therefore

$$
F
=
\frac{709.3333}{122.6667}
=
5.783
$$

This matches the value shown in the ANOVA table.

---

### Probability Values

To determine statistical significance, the calculated F statistic is compared with an F distribution.

The required degrees of freedom are:

| Effect | Numerator df | Denominator df |
|----------|----------|----------|
| Task | 1 | 42 |
| Dosage | 2 | 42 |
| Task × Dosage | 2 | 42 |

The resulting p-value represents the probability of observing an F statistic at least as large as that calculated if the null hypothesis is true.

For the interaction effect:

$$
F = 5.783
$$

with:

- Numerator df = 2
- Denominator df = 42

giving

$$
p = 0.006
$$

---

### Interpreting Main Effects

#### Task Effect

The p-value associated with Task is:

$$
p < 0.001
$$

Therefore the null hypothesis of no task effect is rejected.

There is strong evidence that task complexity affects completion time.

---

#### Dosage Effect

The p-value associated with dosage is:

$$
p = 0.841
$$

Since:

$$
0.841 > 0.05
$$

there is insufficient evidence to conclude that dosage affects completion time when averaged across task types.

---

### Interpreting Interactions

The most important result in this example is the interaction term.

For Task × Dosage:

$$
p = 0.006
$$

Since:

$$
0.006 < 0.05
$$

the interaction is statistically significant.

This indicates that:

> The effect of dosage depends on the level of task being performed.

In this example:

- Increasing dosage slows performance for complex tasks.
- Increasing dosage improves performance for simple tasks.

Therefore, the effect of dosage is not constant across all task types.

---

### Why Interactions Matter

Interaction effects are often the most interesting results in experimental design.

A significant interaction indicates that:

- One factor changes the effect of another factor.
- Main effects should not be interpreted in isolation.
- The behaviour of the system is more complex than a simple additive model.

---

### Key Points

- Two-way ANOVA evaluates two factors simultaneously.
- Three hypothesis tests are performed:
  - Main effect of Factor A
  - Main effect of Factor B
  - Interaction effect
- Mean squares are computed as sums of squares divided by degrees of freedom.
- F statistics compare explained and unexplained variation.
- Significant interactions indicate that one factor modifies the effect of another.
- Interaction effects are often the most informative outcomes in designed experiments.


This section should be placed after the introductory one-way ANOVA material and before factorial design examples in Module 6: Design of Experiments (DoE) & Variance Reduction.