# Bayesian-Statistics-Project

This repository contains the final project for the Bayesian Statistics course held at Politecnico di Milano in the academic year 2025-2026. The study implements a Bayesian multivariate mixed-effects model to analyze and predict risk factors associated with Metabolic Syndrome.

# Table of contents
- [Repository structure](#repository-structure)
- [Setup and Requirements](#setup-and-requirements)
- [Authors](#authors)

---

# Repository structure
The project is organized as follows, reflecting the workflow from data preprocessing to final model interpretation:

### 📁 Core Directories
* `Data/`: Contains all the datasets used throughout the different stages of the analysis.
* `Model_1/` to `Model_7/`: Each folder is dedicated to a specific model iteration and contains:
    * The **Stan code** (`.stan`) for the Bayesian multivariate mixed-effects structure.
    * The **model pickle file** (`.pkl`) containing the compiled model.

### 📜 Analysis & Report Scripts
The following notebooks and scripts were used to process data and generate the final report:

* **Preprocessing & Imputation**:
    * `mice.R`: Implementation of Multiple Imputation by Chained Equations for missing values.
    * `Datasets_balanced_and_reduced.ipynb`: Script for datasets df_balanced and df_reduced.
    * `EDA.ipynb`: Exploratory Data Analysis.
* **Model Selection & Inference**:
    * `Covariates_selection.ipynb`: Analysis of 23 covariates to exclude non-significant predictors.
    * `Model_Selection.ipynb`: Comparison of different models using **ELPD-LOO**.
* **Results & Interpretation**:
    * `Model_Interpretation.ipynb`: Final analysis and interpretation of the obtained results.

---

# Setup and Requirements
To run the models, you will need:
* **R** (for `mice.R`)
* **Python 3.x**
* **CmdStanPy** or **PyStan** to execute the `.stan` files.

---

# Authors
- Noemi Bongiorni ([@NoemiBongiorni](https://github.com/NoemiBongiorni))
- Elisa Nordera ([@elisanordera](https://github.com/elisanordera))
- Martina Caliandro
- Matteo Zanetti
- Davide Marchesi
- Greta Minazzi
