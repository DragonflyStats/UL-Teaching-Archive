For Module 3: Calibration, Linear Regression, Robust Modelling & Detection Limits, the following material on Limit of Blank (LoB), Limit of Detection (LoD), and Limit of Quantitation (LoQ) fits naturally within the existing detection-limit content. It would sit immediately before or after the current LOD/LOQ material in MA4605_Module_3_Part_1.md.

###### 3.1.3 Limit of Blank (LoB), Limit of Detection (LoD), and Limit of Quantitation (LoQ)

#### Introduction

Limit of Blank (LoB), Limit of Detection (LoD), and Limit of Quantitation (LoQ) are analytical performance characteristics that describe the lowest concentration of a measurand that can be reliably detected or quantified by an analytical procedure.

These metrics are particularly important when measuring trace concentrations of analytes close to the detection capabilities of an analytical instrument.

---

### Limit of Blank (LoB)

The **Limit of Blank (LoB)** is defined as the highest apparent analyte concentration expected when replicate measurements are performed on a blank sample containing no analyte.

The LoB represents the upper boundary of the measurement distribution obtained from blank samples.

It is calculated as:

$$
LoB = \bar{x}_{blank} + 1.645\,SD_{blank}
$$

where:

- $\bar{x}_{blank}$ = mean blank response
- $SD_{blank}$ = standard deviation of blank measurements
- 1.645 corresponds approximately to the 95th percentile of a one-sided normal distribution

#### Interpretation

The LoB represents the highest signal expected from analytical noise alone.

Any signal above the LoB is unlikely to be attributable solely to random variation in blank measurements.

---

### Limit of Detection (LoD)

The **Limit of Detection (LoD)** is the lowest concentration of analyte that can be reliably distinguished from the Limit of Blank.

The LoD is determined using:

- The experimentally determined LoB
- Replicate measurements of a low-concentration sample

The LoD is calculated as:

$$
LoD = LoB + 1.645\,SD_{low}
$$

where:

- $SD_{low}$ = standard deviation of measurements obtained from a low-concentration sample

#### Interpretation

At concentrations equal to or above the LoD:

- Detection of the analyte is considered feasible.
- The analytical signal can be distinguished from blank noise with high confidence.

It is important to note that detection does not necessarily imply accurate quantification.

---

### Limit of Quantitation (LoQ)

The **Limit of Quantitation (LoQ)** is the lowest concentration at which the analyte can not only be detected but also quantified with acceptable accuracy and precision.

Unlike the LoD, the LoQ depends on predefined performance criteria such as:

- Acceptable bias
- Acceptable imprecision
- Regulatory requirements
- Method validation standards

#### Interpretation

At concentrations above the LoQ:

- Measurements are sufficiently accurate.
- Measurement uncertainty is acceptable.
- Quantitative analytical results can be reported with confidence.

The LoQ may:

- Be close to the LoD, or
- Occur at substantially higher concentrations if precise quantification is difficult near the detection limit.

---

### Relationship Between LoB, LoD, and LoQ

These limits generally follow the relationship:

$$
LoB < LoD \leq LoQ
$$

where:

| Metric | Purpose |
|----------|----------|
| LoB | Highest response expected from a blank sample |
| LoD | Lowest concentration that can be reliably detected |
| LoQ | Lowest concentration that can be reliably quantified |

---

### Graphical Interpretation

Conceptually:

```text
Blank Noise Region
|------------|

          LoB
           |
-----------|--------------------------

                 LoD
                  |
------------------|-------------------

                           LoQ
                            |
----------------------------|----------
```

- Measurements below the LoB are indistinguishable from analytical noise.
- Measurements between the LoB and LoD are uncertain.
- Measurements above the LoD may be detected but not necessarily quantified accurately.
- Measurements above the LoQ can be reported quantitatively with confidence.

---

### Analytical Chemistry Context

These performance metrics are routinely used in:

- Instrument validation
- Method development
- Environmental analysis
- Clinical chemistry
- Pharmaceutical quality control
- Trace-level contaminant monitoring

They provide an objective framework for evaluating the sensitivity and reliability of analytical measurement procedures.

---

### Key Points

- **LoB** defines the upper limit of expected blank responses.
- **LoD** defines the lowest concentration that can be reliably detected.
- **LoQ** defines the lowest concentration that can be reliably quantified.
- LoB is determined using blank samples.
- LoD uses both blank and low-concentration samples.
- LoQ incorporates predefined requirements for accuracy and precision.
- In most analytical methods:

$$
LoB < LoD \leq LoQ
$$

and each represents a progressively more stringent analytical requirement.


Suggested location: Insert as Section 3.1.3 immediately after Calibration Concepts, Standard Solutions and Standard Additions and before the broader discussion of calibration-model detection limits in MA4605_Module_3_Part_1.md.