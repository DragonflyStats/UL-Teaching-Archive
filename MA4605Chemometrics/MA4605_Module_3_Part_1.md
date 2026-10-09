##### 3.1.1 Calibration Concepts, Standard Solutions and Standard Additions

### Limit of Detection (LOD)

In analytical chemistry, the **Limit of Detection (LOD)**, also known as the detection limit or lower limit of detection, is the lowest quantity of a substance that can be distinguished from the absence of that substance (a blank value) within a stated confidence limit (generally 1%).

The detection limit is typically estimated from:

- The mean of the blank measurements.
- The standard deviation of the blank measurements.
- An appropriate confidence factor.

Another factor affecting the detection limit is the accuracy of the calibration model used to predict concentration from the raw analytical signal.

### Aliquot

An **aliquot** is a portion of a larger whole, especially a sample taken for chemical analysis or other laboratory treatment.

---

### Standard Solution

In analytical chemistry, a **standard solution** is a solution containing a precisely known concentration of an element or substance. A known mass of solute is dissolved and diluted to a specific volume. Standard solutions are prepared using a standard substance, such as a primary standard.

Standard solutions are commonly used to determine the concentrations of other substances, for example during titrations.

Concentrations are typically expressed in units such as:

- mol L$^{-1}$ (molarity, M)
- mol dm$^{-3}$
- kmol m$^{-3}$

A simple standard solution may be prepared by dissolving a known amount of analyte in a suitable solvent.

---

### Calibration Curve

A **calibration curve** is used to determine the concentration of a substance in an unknown sample by comparison with a series of standards of known concentration.

The calibration curve plots the **instrumental response** (analytical signal) against the **analyte concentration**. A series of standards is prepared over a concentration range that encompasses the expected concentration of the unknown sample. Each standard is analysed and the resulting responses are recorded.

For many analytical methods, the relationship between concentration and instrumental response is approximately linear. The concentration of the unknown sample can then be estimated by interpolation from the calibration line.

More generally, a calibration curve may be used to relate the output of any measuring device to the quantity being measured. For example, a pressure transducer calibration curve may relate output voltage to applied pressure.

#### Error in Calibration Curve Results

The estimated concentration of an unknown sample contains uncertainty. Assuming a linear calibration relationship, the standard error in the determined concentration is:

$$
s_x=\frac{s_y}{|m|}\sqrt{\frac{1}{n}+\frac{1}{k}+\frac{(y_{unk}-\bar{y})^2}{m^2\sum{(x_i-\bar{x})^2}}}
$$

where

$$
s_y = \sqrt{\frac{\sum(y_i-mx_i-b)^2}{n-2}}
$$

and:

| Symbol | Description |
|----------|-------------|
| $s_y$ | Standard deviation of the residuals |
| $m$ | Slope of the calibration line |
| $b$ | Intercept of the calibration line |
| $n$ | Number of calibration standards |
| $k$ | Number of replicate unknown measurements |
| $y_{unk}$ | Signal measured for the unknown |
| $\bar{y}$ | Mean signal for the standards |
| $x_i$ | Standard concentrations |
| $\bar{x}$ | Mean standard concentration |

The uncertainty is minimised when the signal from the unknown lies near the centre of the calibration range.

---

### Standard Addition Method

The **standard addition method** (often referred to as *spiking*) is widely used when an analyte is present in a complex matrix such as biological fluids, environmental samples, or soil extracts.

The method is used because matrix components may interfere with the analyte signal, leading to inaccurate concentration estimates. By adding known quantities of analyte directly to the sample and measuring the corresponding change in signal, matrix effects can be reduced.

#### Procedure

1. Divide the sample into several equal aliquots.
2. Transfer each aliquot into identical volumetric flasks.
3. Dilute the first flask to volume without adding standard.
4. Add increasing volumes of a standard solution to the remaining flasks.
5. Dilute all flasks to the same final volume.
6. Measure the instrument response for each solution.

The data are then plotted as:

- **x-axis:** Volume of standard added ($V_S$)
- **y-axis:** Instrument response ($S$)

A linear regression is performed:

$$
S = mV_S + b
$$

where:

- $S$ = instrument response
- $V_S$ = volume of standard added
- $m$ = slope
- $b$ = intercept

Conceptually, the extrapolated x-intercept corresponds to the volume of standard that contains the same amount of analyte originally present in the sample.

$$
V_x c_x = |(V_S)_0|c_S
$$

where:

- $V_x$ = sample aliquot volume
- $c_x$ = analyte concentration in the sample
- $c_S$ = concentration of the standard solution
- $(V_S)_0$ = x-intercept of the calibration line

The analyte concentration can therefore be calculated from the slope and intercept of the standard-addition calibration curve.

#### Conditions for Successful Application

For the standard-addition method to be valid:

1. The calibration relationship must be linear.
2. The calibration curve must pass through the origin.

The sample signal is measured, followed by successive measurements after known additions of standard solution. A plot of signal intensity against added concentration gives a straight line, and the analyte concentration is obtained from the point where the extrapolated line intersects the concentration axis at zero signal.

An optimal standard addition typically produces a signal increase of approximately **1.5 to 3 times** the original sample signal.

