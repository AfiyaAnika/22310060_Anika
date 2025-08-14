## List of Contents
- [Introduction](#introduction)
- [Software and packages](#software_and_packages)
- [1 Principal Component Analysis(PCA)](#1_principal_component_analysis(PCA))
- [2 Covariance Matrix](#2_covariance_matrix)
- [3 Factor Analysis(FA)](#3_factor_analysis(FA))
- [4 Clustering](#4_clustering)
- [5 DBSCAN](#5_DBSCAN)
- [6 Multidimentional Scaling (MDS)](#6_multidimentional_scaling (MDS))
- [7 Correspondence Analysis (CA)](#7_correspondence_analysis (CA))


---
## Introduction
This repository presents a curated collection of academic projects centered on advanced statistical analysis and data science. It features rigorous implementations of multivariate techniques such as **Factor Analysis**, **Principal Component Analysis (PCA)**, various clustering algorithms like **DBSCAN**, and **Multidimensional Scaling (MDS)**. Each project, developed in both **Jupyter Notebook using Python** and **R studio** to demonstrate both a firm theoretical understanding and a proficient practical application of these methods on sample datasets.

## Software and packages
- **Jupyter Notebook** – Interactive environment for writing and running Python code.
- **R Studio** - An integrated development environment (IDE) specifically designed for the R programming language, used for statistical computing and graphics.
- **NumPy** – Numerical computing and array operations.
- **scikit-learn** – Machine learning and statistical modeling, including:
- **Matplotlib** – A foundational Python library for creating a wide variety of static, animated, and interactive data visualizations.
- **Seaborn** – A high-level Python visualization library built on top of Matplotlib, designed for making attractive and informative statistical graphics.
- **FactoMineR** – An R package designed for multivariate data analysis, offering tools to perform methods like Principal Component Analysis (PCA) and Multiple Correspondence Analysis (MCA).
- **FactoExtra** – A companion R package that works with FactoMineR to help visualize and extract the results of multivariate data analyses in an easy and elegant way.


## 1 Prinipal Component Analysis(PCA)  
Principal Component Analysis (PCA) is a statistical technique used to simplify complex data. Its main goal is to reduce the number of variables in a dataset while retaining as much of the original information as possible.  
I have used a sample dataset having variables height, weight, age, and gender. The analysis gives us the information on how many factors are enough to explain the 85%+ data variation. That factor count is the selected pricipal components.  

## 2 Covarince Matrix
A covariance matrix is a square matrix that summarizes the variance and covariance of a set of variables. In essence, it shows how different variables in a dataset change together.  
I have use **iris** dataset to identify the direction of relationship among the variables.  

## Factor Analysis(FA)
Factor analysis is a statistical method used to find a smaller number of unobserved, underlying variables, called factors, from a larger set of observed variables. The main goal is to identify the hidden structure that explains why different variables are correlated with each other.  
I have done **Confirmatory Factor Analysis**, **Explanatory Factor Analysis(EFA)** and **Multiple Factor Analysis(MFA)** using different dataset. Data and code are given in the corresponding folder.



