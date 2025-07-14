# Churn Risk Analytics: Identifying and Preventing Customer Drop-Off

# Introduction 

Customer retention is a critical factor for the long-term success of any banking institution. This project focuses on predicting customer churn .The likelihood that a customer will leave the bank  by analyzing various customer attributes such as age, tenure, balance, product usage, and account activity. Using machine learning techniques, we aim to classify customers as potential churners or loyal clients. The data is extracted and explored using PostgreSQL, preprocessed and modeled in Python, and the results are visualized through interactive dashboards in Power BI. These dashboards highlight churn distribution, high-risk segments, and key drivers influencing churn. By understanding the patterns behind customer attrition, the bank can take proactive steps to retain valuable customers, improve service strategies, and optimize marketing efforts. This end-to-end project provides a data-driven approach to enhancing customer satisfaction and reducing churn rates in the competitive banking landscape.

# 	Data Overview

The dataset used in this project contains information on 10,000 bank customers, with 14 features including demographics, account activity, and financial status. Key columns include Age, Gender, Geography, Tenure, Balance, Number of Products, Credit Card status, and whether the customer is an active member. The target variable Exited indicates if the customer has churned. This structured dataset enables detailed exploratory analysis and supports predictive modeling to identify patterns and risk factors associated with customer attrition.

# 	Tools:

**PostgreSQL**

•	Version : PostgreSQL 16 , Windows 11

•	Description: PostgreSQL is a powerful, open-source object-relational database system known for its reliability, feature robustness, and standards compliance.

**Jupyter Notebook** 

•	Version : JupyterLab 4.0 / Notebook 7.1 (Latest release in 2025)

•	Python Version: Python 3.11

•	Description: Jupyter Notebook provides an interactive environment for writing and running code, visualizing data, and documenting analysis.

**Power BI Desktop**

•	Version : Power BI Desktop May 2025 Update (Version 2.128.x)

•	Description: Power BI is a business analytics tool that enables data transformation, modeling, and rich interactive visualizations

# Data Analysis

In this project, I began by thoroughly exploring the customer dataset to understand its structure and key attributes such as age, tenure, balance, income, credit score, and geographic information. I performed data cleaning, handled missing values, and converted categorical variables into numerical formats for analysis. Using exploratory data analysis (EDA), I employed statistical summaries and visualizations like histograms, box plots, and bar charts to uncover patterns in customer behavior and identify potential churn indicators.

Next, I used Power BI to create an interactive dashboard that allowed deeper segmentation by geography, age group, tenure, and financial metrics. This helped reveal that churn was higher among middle-aged individuals, customers with 0–1 year and 8–10 years of tenure, and those with low or very high balances.

To predict customer churn, I trained a **Random Forest Classifier**, a robust machine learning model suitable for classification tasks. The model used features like balance, credit score, income, and tenure to identify customers with a high probability of churning. By analyzing the model's output, I detected 922 high-risk customers and gained actionable insights.

These analyses enabled me to build a complete data story, offering clear, visual, and predictive insights to guide customer retention strategies effectively.

#  Decision to Prevent Churn

Based on the insights gained from data analysis and the churn prediction model, several key decisions were made to reduce customer churn. First, I prioritized targeted retention efforts for the 922 high-risk customers identified by the Random Forest Classifier, such as offering personalized offers, loyalty rewards, or direct engagement through support teams. I also recommended improving onboarding and early engagement strategies for new customers, as those with 0–1 year of tenure showed high churn rates. For middle-aged customers and those in the ₹1–2 lakh salary bracket, customized service plans and better communication channels were proposed to address specific needs. Additionally, I advised introducing financial guidance or tailored product offerings for customers with low balances or credit scores. A re-engagement campaign was also suggested for long-tenured customers (8–10 years) to renew their interest and satisfaction. These actions aim to enhance customer experience and increase retention through proactive, data-driven strategies.

# Conclusion 

In conclusion, this project provided valuable insights into customer churn patterns through data analysis and predictive modeling. By identifying key churn drivers such as tenure, age, balance, credit score, and income level, targeted strategies can now be implemented to reduce churn. The interactive dashboard served as a powerful storytelling tool, enabling clear visualization of risk segments. These findings empower stakeholders to make data-driven decisions, improve customer retention, and enhance overall business performance through focused and proactive engagement strategies.

# References 


1.	**Storytelling with Data**– by Cole Nussbaumer Knaflic

2.	**Hands-On Data Analysis with Pandas** – by Stefanie Molin
   
3.  Python for analysis : https://www.geeksforgeeks.org/pandas-and-numpy-exercies-for-data-analysis/
   
4.  SQL Database create : https://www.w3schools.com/sql/sql_create_db.asp

5.  Power BI report making : https://interworks.com/blog/2024/07/10/how-to-build-a-report-in-power-bi-desktop



