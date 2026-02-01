Hypothesis Testing Using Critical Value Method (Python)



--------------------------------------------------



PROJECT TITLE:

Hypothesis Testing Using Critical Value Method in Python



--------------------------------------------------

DESCRIPTION:

This project implements hypothesis testing using the Critical Value Method
for population mean when the population standard deviation is known.
The program allows the user to perform two-tailed, right-tailed, and
left-tailed Z-tests by taking statistical parameters as input and
automatically determining whether to reject or fail to reject the null
hypothesis.

The program uses Python’s SciPy library to calculate Z-critical values.

--------------------------------------------------

OBJECTIVES:

- To understand hypothesis testing using the critical value approach
- To implement Z-tests using Python
- To support two-tailed, right-tailed, and left-tailed hypothesis tests
- To automate decision-making in statistical testing

--------------------------------------------------

TECHNOLOGIES USED:
Programming Language: Python

Libraries:
- math
- scipy.stats

--------------------------------------------------

THEORY BACKGROUND:
In hypothesis testing, the critical value method compares the sample
statistic with boundary values obtained from the standard normal
distribution.

Z-test statistic formula:

Z = (x̄ − μ₀) / (σ / √n)

Where:
x̄  = sample mean
μ₀  = hypothesized population mean
σ   = population standard deviation
n   = sample size
If the sample mean lies outside the critical region, the null hypothesis
is rejected.

--------------------------------------------------

FEATURES OF THE PROGRAM:
- Takes user input for all statistical parameters
- Supports:
&nbsp; 1. Two-tailed test
&nbsp; 2. Right-tailed test
&nbsp; 3. Left-tailed test

- Calculates:
&nbsp; - Standard error
&nbsp; - Z-critical value
&nbsp; - Critical value limits

- Displays a clear decision result


--------------------------------------------------


PROGRAM FLOW:
1. User enters:
&nbsp;  - Population standard deviation
&nbsp;  - Hypothesized mean
&nbsp;  - Sample mean
&nbsp;  - Sample size
&nbsp;  - Significance level
2. User selects test type
3. Program calculates Z-critical value and critical limits
4. Decision is displayed as:
&nbsp;  - Reject H0
&nbsp;  - Fail to Reject H0

--------------------------------------------------

HOW TO RUN THE PROGRAM:
1. Install required library:
&nbsp;  pip install scipy
2. Run the program:
&nbsp;  python HypothesisTesting.py
3. Enter the required values when prompted.

--------------------------------------------------

SAMPLE OUTPUT:
Hypothesis Testing - Critical Value Method

Test: Two-tailed
z\_critical: 2.5758293035489004
LCV: 9.927144545291261
UCV: 10.072855454708739
xbar: 9.95
Decision: Fail to Reject H0

--------------------------------------------------

FILE INFORMATION:

Main File: HypothesisTesting.py
Core Function: hypothesis\_test\_cv()
Execution Mode: Command-line (interactive)

--------------------------------------------------

APPLICATIONS:
- Engineering statistics
- Quality control
- Academic and lab demonstrations
- Hypothesis testing and confidence analysis

--------------------------------------------------

CONCLUSION:
This project demonstrates an effective implementation of hypothesis
testing using the critical value method. It provides a simple and
interactive approach to apply statistical decision rules using Python
and is suitable for educational and analytical purposes.

--------------------------------------------------

REFERENCES:
- Lecture notes and classroom instruction by Prof. Tapan Jain,
  Digital Image processing, Department of ECE, IIIT Nagpur.
- SciPy Documentation

--------------------------------------------------



