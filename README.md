# Health Insurance Price Prediction
This repository contains a Python project that focuses on predicting health insurance prices using various machine learning algorithms. The project aims to understand the factors that significantly impact health insurance premiums and to build a predictive model that estimates insurance costs based on customer information.

## Table of Contents
1. Introduction
1. Data
1. Exploratory Data Analysis (EDA)
1. Linear Regression Model
1. Model Comparison
1. Usage
1. Contributing
1. License

## Introduction
Health insurance companies often use predictive modeling to estimate insurance prices for their customers. This project aims to explore the significance of different parameters in determining insurance prices and build a predictive model using machine learning techniques.

## Data
The project uses the healthcare dataset available on Kaggle, which contains information about individuals including their age, sex, BMI, number of children, smoker status, and region. The dataset is used to train and evaluate machine learning models for predicting health insurance prices.

## Exploratory Data Analysis (EDA)
EDA is conducted to understand the relationships between various parameters and insurance charges. The exploratory analysis includes visualizations, correlation analysis, and identifying significant factors that affect insurance prices.

## Linear Regression Model
A linear regression model is built to understand the relationships between different parameters and insurance charges. The model is used to determine the significance of each parameter in predicting insurance prices.

## Model Comparison
Different machine learning algorithms, including Linear Regression, Support Vector Regression (SVR), Random Forest Regression, and Gradient Boosting Regression, are utilized to build predictive models. The models are compared based on their R-squared scores and mean absolute errors to identify the most effective model for price prediction.

## Usage
1. Clone the repository:

> bash

``git clone https://github.com/your-username/health-insurance-price-prediction.git``
1. Install the required libraries using the provided requirements.txt file:

> bash

``pip install -r requirements.txt``
1. Run the provided Jupyter Notebook health_insurance_prediction.ipynb to explore the project steps, code, and results.
2. To predict insurance prices with the trained model, you can use the provided interface:

> bash

``python predict_insurance.py``

Enter the requested information and the program will provide an estimated insurance cost.

## Contributing
Contributions to this project are welcome! If you find any issues or want to add improvements, feel free to create issues and pull requests.
