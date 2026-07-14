# 📒 Notebooks

## Overview

This folder contains the complete Python-based analytical workflow for the **Employee Attrition Analysis** project. Each notebook represents a distinct stage of the data analytics lifecycle, beginning with understanding the raw dataset and ending with building a predictive machine learning model.

The notebooks are designed to follow a structured workflow, making the project easy to understand, reproduce, and maintain.

---

## 📂 Notebook Structure

```text
notebooks/
│
├── 📘 01_Data_Understanding.ipynb
│   ├── Import Required Libraries
│   ├── Load Dataset
│   ├── Dataset Shape
│   ├── Dataset Information
│   ├── Statistical Summary
│   ├── Missing Value Analysis
│   ├── Duplicate Record Check
│   ├── Data Type Verification
│   ├── Unique Value Analysis
│   └── Initial Observations
│
├── 📙 02_Data_Cleaning.ipynb
│   ├── Handle Missing Values
│   ├── Remove Duplicate Records
│   ├── Remove Constant Columns
│   ├── Drop Unnecessary Features
│   ├── Validate Categorical Data
│   ├── Data Quality Checks
│   ├── Export Cleaned Dataset
│   └── Cleaning Summary
│
├── 📗 03_EDA.ipynb
│   ├── Univariate Analysis
│   ├── Bivariate Analysis
│   ├── Multivariate Analysis
│   ├── Correlation Analysis
│   ├── Feature Relationships
│   ├── Business Questions
│   ├── Key Insights
│   ├── Business Recommendations
│   └── EDA Summary
│
└── 📕 04_Modeling.ipynb
    ├── Load Cleaned Dataset
    ├── Feature Encoding
    ├── Feature & Target Selection
    ├── Train-Test Split
    ├── Logistic Regression Model
    ├── Model Prediction
    ├── Model Evaluation
    ├── Confusion Matrix
    ├── Classification Report
    └── Modeling Summary
```

---

## 🔄 Project Workflow

```text
Raw Dataset
      │
      ▼
01_Data_Understanding
      │
      ▼
02_Data_Cleaning
      │
      ▼
03_Exploratory_Data_Analysis
      │
      ▼
04_Logistic_Regression_Model
```

---

## 📊 Analysis Pipeline

The notebooks follow a structured analytics pipeline:

- **Data Understanding** – Explore the dataset structure, identify missing values, examine data types, and understand feature distributions.
- **Data Cleaning** – Improve data quality by handling missing values, removing redundant information, validating categorical variables, and preparing the dataset for analysis.
- **Exploratory Data Analysis (EDA)** – Investigate patterns, relationships, and trends using statistical summaries and visualizations while answering business-oriented questions.
- **Machine Learning** – Build a Logistic Regression model to predict employee attrition and evaluate its performance using standard classification metrics.

---

## 🎯 Objective

The primary objective of these notebooks is to demonstrate a complete end-to-end data analytics workflow, transforming raw HR data into meaningful insights and predictive models that support data-driven decision-making.
