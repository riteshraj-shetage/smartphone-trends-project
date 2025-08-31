# 📱 Smartphone Trends Project

![Status](https://img.shields.io/badge/status-Completed-brightgreen)
![Made with R](https://img.shields.io/badge/made%20with-R-blue)
![Visualization](https://img.shields.io/badge/visualized%20in-Excel-orange)

> A survey-based statistical analysis exploring consumer behavior and smartphone usage trends. This project applies hypothesis testing and visual storytelling to uncover meaningful insights from primary data.

---

## 🧠 Project Overview

This study investigates evolving smartphone usage patterns through direct consumer feedback. Using primary data collected via Google Forms, we conducted statistical tests and visualized key trends to answer questions like:

- What features influence smartphone purchase decisions?
- What tasks do users primarily use their smartphones for?
- Do usage patterns vary by region or occupation?
- Are there any health issues linked to prolonged smartphone usage?
- How does screen time correlate with user satisfaction and productivity?

---

## 📋 Methodology

| Step | Description |
|------|-------------|
| **Data Collection** | Primary data gathered via [Google Forms survey](https://forms.gle/82FkHuSPx5FbxMEY9) |
| **Statistical Analysis** | Hypothesis testing and descriptive statistics performed in RStudio |
| **Visualization** | Charts and graphs created in Microsoft Excel to highlight trends |

---

## 📊 Visualizations

<details>
  <summary>📸 Click to expand charts</summary>
  
Distribution of Daily Smartphone Usage
<p align="center">
  <img src="visuals/Distribution of Daily Smartphone Usage.png" alt="Survey Chart" width="400"/>
</p>
 
Distribution of Respondents by Age Group
<p align="center">
  <img src="visuals/Distribution of Respondents by Age Group.png" alt="pie-chart" width="400"/>
</p>
 
Distribution of Smartphone Satisfaction
<p align="center">
  <img src="visuals/Distribution of Smartphone Satisfaction.png" alt="Survey Chart" width="400"/>
</p>
 

</details>

---

## 🔑 Key Takeaways

### 1. Youth-Centric and Rural Representation
The survey primarily captures the perspectives of younger individuals residing in rural areas, with a notable gender imbalance.

- **Age Group**: Majority (127 out of 213) are in the **18–25 age group**  
- **Gender**: Significant male dominance — **154 males** vs **59 females**  
- **Location**: Higher representation from **rural areas (148 respondents)** compared to **urban (65 respondents)**  
- 📊 *See the chart:* **Distribution of Respondents by Age Group**

---

### 2. Moderate Smartphone Usage with Focus on Productivity & Communication
Respondents generally use their smartphones moderately, prioritizing essential tasks like learning, education, calls, and messages.

- **Daily Usage**: Most respondents (100 out of 213) use smartphones for **2–4 hours daily**  
- **Top Activities**:  
  - *Learning/Education* — 145 mentions  
  - *Calls & Messages* — 135 mentions  
- **Experience**: 83 respondents have been using smartphones for **2–5 years**  
- 📊 *See the chart:* **Distribution of Daily Smartphone Usage**

---

### 3. High Reliance & Satisfaction Despite Health Concerns
Smartphones are considered highly important and satisfaction is generally high, though health concerns are noticeable.

- **Importance**:  
  - *Very important* — 93 respondents  
  - *Somewhat important* — 63 respondents  
- **Dependence**:  
  - *Fairly dependent* — 95 respondents  
  - *Somewhat dependent* — 59 respondents  
- **Health Issues**:  
  - *Sometimes experience health issues* — 99 respondents  
- **Satisfaction**:  
  - *Satisfied* — 121 respondents  
  - *Very satisfied* — 52 respondents  
- 📊 *See the chart:* **Distribution of Smartphone Satisfaction**

---

## 🔍 Further Analysis

- **Correlation between Usage & Health Issues**  
  Investigate if longer smartphone usage directly correlates with more frequent health issues.  

- **Impact of Residence Area on Digital Adoption**  
  Compare differences in smartphone usage, importance, and satisfaction between **rural vs urban respondents**.  

- **Feature Preference by Age Group**  
  Explore if specific age groups prefer certain smartphone features more than others.  

---

## 📝 Statistical Tests Applied
To thoroughly analyze this dataset, **eight different statistical tests** are employed. These range from tests of randomness and normality to those examining associations between categorical and ordinal variables. Together, they provide a robust methodology for understanding digital adoption patterns, user behaviors, and health implications.

### 1. Chi-Square Test of Independence
- **Purpose:** Determines if there is a significant association between two categorical variables.  
- **Application to Data:**  
  - **Gender × Daily Smartphone Usage** — Are males more likely to use smartphones for *more than 6 hours* compared to females?  
  - **Residence Area × Smartphone Importance** — Does the perceived importance differ between rural and urban respondents?  
  - **Age Group × Health Issues** — Do younger or older groups report health issues more frequently?

---

### 2. Normality Test (Shapiro-Wilk, Kolmogorov-Smirnov)
- **Purpose:** Checks if numerical/derived variables follow a normal distribution.  
- **Application to Data:**  
  - Convert ordinal scales (e.g., *Satisfaction*: Very Satisfied=5 … Dissatisfied=1) into numerical values.  
  - Test for normality before applying parametric tests such as ANOVA.  

---

### 3. Run Test (Wald-Wolfowitz)
- **Purpose:** Evaluates whether a sequence of binary or categorical responses is random.  
- **Application to Data:**  
  - If responses to *Health Issues (Yes/No)* were analyzed sequentially, the run test could check for randomness in their order.  

---

### 4. Descriptive Statistics
- **Purpose:** Summarizes and describes dataset features (central tendency, dispersion, frequencies).  
- **Application to Data:**  
  - **Frequencies & Percentages:** For categorical variables like Age-group, Gender, Usage Hours.  
  - **Central Tendency (Mode/Median):** For ordinal scales such as Satisfaction and Importance.  
  - **Dispersion (SD):** If ordinal scales are treated numerically.  

---

### 5. Proportionality Test
- **Purpose:** Examines whether the proportion of responses across categories differs significantly from an expected distribution.  
- **Application to Data:**  
  - **Gender Distribution:** Test if the observed proportion of males (154) vs females (59) deviates significantly from an assumed 50-50 distribution.  
  - **Urban vs Rural:** Evaluate whether the higher rural representation (148 vs 65) is statistically significant.  
  - **Satisfaction Levels:** Check if proportions across *Satisfied/Very Satisfied* vs *Dissatisfied* are significantly skewed.  

---

### 6. Correspondence Analysis
- **Purpose:** A multivariate method to visualize relationships between categorical variables in contingency tables.  
- **Application to Data:**  
  - Explore associations between *Tasks performed on smartphones* and *Reasons for starting smartphone use*.  
  - Graphically identify clusters of related categories.  

---

### 7. Ordinal Logistic Regression
- **Purpose:** Models an ordinal dependent variable using categorical and numerical predictors.  
- **Application to Data:**  
  - **Smartphone Satisfaction (ordinal DV):** Predict satisfaction levels using predictors like Age, Gender, Usage Hours, and Importance.  
  - **Reliance on Smartphones:** Assess predictors influencing dependency levels.  

---

### 8. ANOVA / Kruskal-Wallis Test
- **Purpose:** Tests for differences in means (ANOVA) or medians (Kruskal-Wallis) across multiple groups.  
- **Application to Data:**  
  - **Usage Hours × Age Groups:** Compare if average daily usage differs significantly by age category.  
  - **Satisfaction × Qualification:** Assess whether education level influences satisfaction levels.  

---

## ✅ Conclusion
By combining **descriptive measures** with **inferential tests** like Chi-Square, Proportionality, and Regression, this analysis provides a comprehensive understanding of:  
- How demographics shape smartphone usage  
- Whether digital adoption varies across rural and urban areas  
- How satisfaction and health concerns interact with dependency levels  

📌 *This summary is intended to provide a clear, structured understanding of the survey findings along with directions for deeper analysis.*  

