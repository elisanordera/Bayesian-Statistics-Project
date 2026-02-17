# Bayesian-Statistics-Project

This repository contains the final project for the Bayesian Statistics course held at Politecnico di Milano in the academic year 2025-2026. The study implements a Bayesian multivariate mixed-effects model to analyze and predict risk factors associated with Metabolic Syndrome.

# Table of contents
- [Repository structure](#repository-structure)
- [Setup and Requirements](#setup-and-requirements)
- [Authors](#authors)

---

# Repository structure
The project is organized as follows, reflecting the workflow from data preprocessing to final model interpretation:

### Folder
* `Models`: Contains all the Python notebooks used to run the **Stan codes** (`.stan`) of the models.

### Report Scripts
The following notebooks and scripts were used to process data and generate the final report:
#### 1. Preprocessing & Data Management
* **`mice.R`**: Implementation of **Multiple Imputation by Chained Equations** (MICE) for missing values management.
* **`dataset_balanced_and_reduced.ipynb`**: Contains the logic and code for dataset manipulation, specifically:
    * Creation of **`df_balanced`**: to address class imbalance.
    * Creation of **`df_reduced`**: to generate an optimized/reduced version of the original dataset.
* **`EDA.ipynb`**: **Exploratory Data Analysis** to visualize initial distributions and correlations.

#### 2. Model Selection & Inference
* **`Covariates_selection.ipynb`**: Detailed analysis of 23 covariates to identify and exclude non-significant predictors.
* **`Model_Selection.ipynb`**: Comparison of different models using **ELPD-LOO** (Expected Log Pointwise Predictive Density - Leave-One-Out) to evaluate generalization performance.

#### 3. Results & Interpretation
* **`Model_Interpretation.ipynb`**: Final analysis, parameter visualization, and statistical interpretation of the obtained results.

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
