# Data

## Overview

This folder contains the datasets used throughout the Employee Attrition Analysis project. The data is organized into separate folders to maintain a clear distinction between the original dataset and the processed dataset used for analysis.

## Folder Structure

```text
data/
├── raw/
│   └── employee_attrition.csv
│
└── cleaned/
    └── employee_attrition_cleaned.csv
```

## Raw Data

The `raw` folder contains the original Employee Attrition dataset without any modifications. This dataset serves as the source for all subsequent data cleaning, exploratory analysis, machine learning, SQL analysis, and dashboard development.

## Cleaned Data

The `cleaned` folder contains the processed dataset after performing data cleaning and preprocessing, including:

- Handling missing values
- Removing duplicate records
- Dropping constant and unnecessary columns
- Validating categorical values
- Preparing the dataset for analysis and visualization

The cleaned dataset is used across all stages of the project, including:

- Exploratory Data Analysis (EDA)
- Logistic Regression Modeling
- SQL Business Analysis
- Tableau Dashboard Development

## Note

The original dataset is preserved to ensure reproducibility and maintain a clear record of the data preprocessing workflow.
