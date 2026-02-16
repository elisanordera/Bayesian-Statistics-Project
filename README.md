# Bayesian-Statistics-Project

[cite_start]This repository contains the final project for the Bayesian Statistics course held at Politecnico di Milano in the academic year 2025-2026[cite: 1, 3]. [cite_start]The study implements a Bayesian multivariate mixed-effects model to analyze and predict risk factors associated with Metabolic Syndrome[cite: 6, 21].

# Table of contents
- [Repository structure](#repository-structure)
- [Setup and Requirements](#setup-and-requirements)
- [Authors](#authors)

---

# Repository structure
[cite_start]The project is organized as follows, reflecting the workflow from data preprocessing to final model interpretation[cite: 21]:

### 📁 Core Directories
* [cite_start]`Data/`: Contains all the datasets used throughout the different stages of the analysis[cite: 28, 64].
* `Model_1/` to `Model_7/`: Each folder is dedicated to a specific model iteration and contains:
    * [cite_start]The **Stan code** (`.stan`) for the Bayesian multivariate mixed-effects structure[cite: 9, 86].
    * [cite_start]The **model pickle file** (`.pkl`) containing the compiled model[cite: 97].

### 📜 Analysis & Report Scripts
The following notebooks and scripts were used to process data and generate the final report:

* **Preprocessing & Imputation**:
    * [cite_start]`mice.R`: Implementation of Multiple Imputation by Chained Equations for missing values[cite: 60].
    * [cite_start]`Datasets_balanced_and_reduced.ipynb`: Script for datasets df_balanced and df_reduced[cite: 48, 70].
    * [cite_start]`EDA.ipynb`: Exploratory Data Analysis[cite: 21].
* **Model Selection & Inference**:
    * [cite_start]`Covariates_selection.ipynb`: Analysis of 23 covariates to exclude non-significant predictors.
    * [cite_start]`Model_Selection.ipynb`: Comparison of different models using **ELPD-LOO**[cite: 81].
* **Results & Interpretation**:
    * [cite_start]`Model_Interpretation.ipynb`: Final analysis and interpretation of the obtained results[cite: 103].

---

# Setup and Requirements
To run the models, you will need:
* [cite_start]**R** (for `mice.R`) [cite: 9]
* **Python 3.x**
* [cite_start]**CmdStanPy** or **PyStan** to execute the `.stan` files[cite: 97].

---

# Authors
- Noemi Bongiorni ([@NoemiBongiorni](https://github.com/NoemiBongiorni))
- Elisa Nordera ([@elisanordera](https://github.com/elisanordera))
- Martina Caliandro
- Matteo Zanetti
- Davide Marchesi
- Greta Minazzi
