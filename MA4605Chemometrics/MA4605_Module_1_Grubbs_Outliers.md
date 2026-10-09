###### 1.2.2 Grubbs' Test: Theory, Critical Values and Interpretation

#### Introduction

Several formal statistical procedures have been developed to identify outliers in a dataset. One of the most widely used methods is **Grubbs' Test**, also known as the **Extreme Studentized Deviate (ESD) Test**. This procedure is designed to determine whether the most extreme observation in a sample is statistically inconsistent with the remaining observations.

Grubbs' Test assumes that the underlying population follows a normal distribution and is therefore most appropriate when normality is a reasonable assumption. 

---

#### Measuring the Extremeness of an Observation

The first step is to quantify how far the suspected outlier lies from the centre of the dataset.

This is achieved by calculating the statistic

$$
Z = \frac{|Y_i - \bar{Y}|}{S}
$$

where:

- $Y_i$ is the suspected outlier.
- $\bar{Y}$ is the sample mean.
- $S$ is the sample standard deviation.

A large value of $Z$ indicates that the observation lies far from the remainder of the data.

> **Important:** The mean and standard deviation are calculated using all observations, including the suspected outlier.

---

#### Why Standard Normal Cut-Offs Cannot Be Used

It may seem reasonable to classify any observation more than 1.96 standard deviations from the mean as an outlier since approximately 95% of observations from a normal distribution lie within ±1.96 standard deviations of the mean.

However, this approach assumes that the population standard deviation is known.

In experimental science this is rarely the case. Instead, the standard deviation is estimated from the sample itself.

When an outlier is present:

- The mean shifts toward the outlier.
- The sample standard deviation increases.
- Both the numerator and denominator of the statistic increase.

As a result, extremely large values of $Z$ are difficult to obtain.

In fact, for a sample containing $N$ observations, the statistic cannot exceed a theoretical upper bound. For example, when $N = 3$, the maximum possible value of $Z$ is only 1.155 regardless of the data values.

This motivates the use of specialised critical values developed specifically for Grubbs' Test.

---

#### Critical Values

Grubbs and subsequent researchers tabulated critical values for the test statistic.

The critical value depends on:

- The sample size ($N$).
- The significance level ($\alpha$).

The decision rule is:

$$
Z_{calc} > Z_{critical}
$$

If the calculated test statistic exceeds the tabulated critical value, then

$$
p < 0.05
$$

and the observation may be considered a statistically significant outlier.

The critical value increases as sample size increases.

---

#### Interpretation of the Test

Suppose the calculated value exceeds the critical value.

The conclusion is:

> There is less than a 5% probability of observing an observation this extreme purely by chance if all observations originated from a single normal population.

It is important to note that Grubbs' Test evaluates only the **most extreme observation** in the sample.

If several observations appear unusual, the test should be performed using the observation with the largest value of:

$$
|Y_i-\bar{Y}|
$$

---

#### What Should Be Done with an Outlier?

Identification of a statistical outlier does not automatically imply that the observation should be removed.

Possible actions include:

- Investigating potential measurement or transcription errors.
- Repeating the measurement if possible.
- Reporting analyses both with and without the observation.
- Applying robust statistical procedures that are less sensitive to outliers.

Statistical evidence should always be considered alongside scientific judgement.

---

#### Multiple Outliers

After removing an outlier, it may be tempting to apply Grubbs' Test again to search for another outlier.

This should be done with caution.

The critical values used for the original test are no longer valid after observations have been removed, and specialised procedures are required when testing for multiple outliers.

This limitation is one reason why Grubbs' Test is typically regarded as a **single-outlier detection procedure**.

---

#### Computing an Approximate p-Value

Instead of relying solely on tabulated critical values, an approximate p-value can be calculated.

The procedure is:

1. Calculate the Grubbs statistic $Z$.
2. Convert the statistic to an equivalent t-statistic.
3. Obtain the two-sided probability using Student's t-distribution with $N-2$ degrees of freedom.
4. Multiply the resulting probability by the sample size $N$.

The resulting value provides an approximate p-value for the outlier test.

For large values of $Z$, this approximation is generally very accurate.

For smaller values of $Z$, the approximation tends to be conservative and may slightly overestimate the true p-value.

---

#### Assumptions of Grubbs' Test

The test requires:

- Independent observations.
- A normally distributed population.
- A single suspected outlier.

The test should not be applied blindly to heavily skewed or non-normal datasets.

When substantial departures from normality are present, alternative methods may be more appropriate.

---

#### Summary

Grubbs' Test is a formal procedure for detecting a single outlier in normally distributed data.

Key points:

- Uses the distance between an observation and the sample mean.
- Standardises that distance using the sample standard deviation.
- Compares the resulting statistic with a sample-size-dependent critical value.
- Provides a formal hypothesis test for outlier detection.
- Assumes normality and is intended primarily for identifying one outlier at a time.

In practice, Grubbs' Test is most useful when combined with graphical techniques such as boxplots and Q-Q plots, together with scientific knowledge of the measurement process.


Suggested location: immediately after "#### Grubbs' Test: First Variant" in MA4605_Module_1_Part_2_Outliers.md and before "#### Grubbs' Test: Second and Third Variants".