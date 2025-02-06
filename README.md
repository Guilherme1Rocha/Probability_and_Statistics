# Probability and Statistics Problems

## Question 1
The file `Paises_PIB_ICH.csv` contains a dataset with the following variables:
- **GDP**: Gross Domestic Product per capita adjusted for cost of living.
- **HCI**: Human Capital Index.

After reading the file in **R**:
1. Select all countries from the continents **Europe** and **Americas**.
2. Use the **ggplot2** package to generate a scatter plot of **HCI** values as a function of **GDP per capita**.
3. All countries should be represented by a symbol, while **Lithuania, Iceland, United States, and Saint Lucia** must be labeled with their names.
4. The plot and the corresponding code should be submitted in a **PDF file containing a single page**.

---

## Question 2
The file `master.csv` contains a dataset on suicides in 101 countries, including the following variables:
- **country**: Country.
- **year**: Year.
- **sex**: Gender.
- **age**: Age group.
- **suicides/100k pop**: Number of suicides per 100,000 inhabitants.

After reading the file in **R**:
1. Select data from the year **1986** and the **25-34 years** age group.
2. Use the **ggplot2** package to create a bar chart comparing suicide rates per 100,000 inhabitants between males and females.
3. The plot and the corresponding code should be submitted in a **PDF file containing a single page**.

---

## Question 3
The file `electricity.xlsx` contains data on monthly electricity production from 2010 to 2022, including both renewable and fossil fuel sources.

After reading the file in **R**:
1. Generate a plot representing the **proportion of electricity produced from renewable sources** since the beginning of 2015.
2. The plot should include average values for all countries as well as specific values for **Hungary and Iceland**.
3. The plot and the corresponding code should be submitted in a **PDF file containing a single page**.

---

## Question 4
A system consists of 9 electrical circuits that emit encoded signals. If at least one circuit emits a signal of **2**, an audible warning is triggered.

By setting the seed to **2255**, simulate **150** realizations of the system and compute the proportion of instances in which a warning was triggered in a system that was not turned off.

Select the correct answer from the following options:
- 0.009
- 0.33
- 0.90
- 0.38
- 0.75

---

## Question 5
Let **(Z₁, Z₂, ..., Zₙ₋₁)** be independent random variables following a normal distribution. It is known that the random variable:

\[
T = \frac{Z_1}{\sqrt{\frac{\sum_{i=2}^{n} Z_i^2}{n-1}}}
\]

follows a **t-Student distribution** with **n** degrees of freedom.

To confirm this empirically, follow these steps:
1. Consider **n = 4**, setting the seed to **2126**.
2. Generate **150 samples**, each consisting of **130 values** of **T**.
3. Compute the average proportions **P(T ≤ -0.9)** and compare with the theoretical value from the **t-distribution**.

Report the absolute difference between the empirical and theoretical approximations, rounded to **five decimal places**.

---

## Question 6
Consider **X₁, X₂, ..., X₃₀** as random variables following an **exponential distribution** with an expected value of **α = 4**.

To compute the reliability of the total duration of **30 electronic components**, follow these steps:
1. Set the seed to **1948** and generate **1000 samples** of **Y = ∑ Xᵢ**.
2. Compute the proportion of simulated values where **Y > 90**.
3. Use the exact distribution of **Y** to determine reliability.

Report the absolute difference between the two approaches, multiplied by **100** and rounded to **four decimal places**.

---

## Question 7
A risk manager aims to model the distribution of insurance claim amounts **X** using the following probability density function:

\[
θx^{−(θ+1)}, \quad x ≥ α
\]

where **α = 4.5** and **θ** is unknown.

Given a dataset of **18 observations**:
1. Use the **mle** function from the **stats4** package to estimate **θ** via **maximum likelihood estimation (MLE)**.
2. Compute the absolute deviation between the estimated **θ** and the expected value **θ = 3.4**.
3. Present the result rounded to **four decimal places**.

---

## Question 8
A mechanical engineer assumes that the **braking distance X** follows a **normal distribution** with unknown mean **μ** and unknown variance **σ²**.

Follow these steps:
1. Set the seed to **1592**, then extract **n = 12** observations.
2. Obtain the **96% confidence interval** for **σ²**.
3. Minimize the expected width of the confidence interval.
4. Report the difference between the computed widths, rounded to **three decimal places**.

---

## Question 9

Let \( (X_1, \dots, X_{100}) \) be a random sample from a population following a **Poisson distribution** with parameter \( \lambda \). To test the hypothesis \( H_0: \lambda = 2.40 \) against \( H_1: \lambda = 2.65 \), a hypothesis test was constructed that rejects \( H_0 \) when \( \bar{X} > k \), where \( k = 2.623 \).

By setting the seed to **4588**, generate \( m = 5000 \) pairs of samples of size \( n = 100 \) from the Poisson distribution—one under \( H_0 \) and another under \( H_1 \) in each pair—and compute the relative frequencies of both types of decision errors.

Based on the results obtained, compute an approximate value of the ratio between the **Type II error probability** and the **Type I error probability**.


