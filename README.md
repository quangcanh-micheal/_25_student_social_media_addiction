# Student Social Media Addiction Analysis
This repository contains a comprehensive data analysis project exploring the impact of social media usage on student well-being, academic performance, and mental health. The project utilizes SQL for data transformation and Power BI for interactive visualization.

# Dataset Description
The analysis is based on a dataset of 705 students globally. It captures a wide range of demographic and behavioral variables:

Demographics: Age, Gender, Academic Level (High School, Undergraduate, Graduate), and Country.

Usage Metrics: Average daily hours spent on social media and the most used platform.

Impact Metrics: Sleep hours per night, Mental Health Score (1-10), and Conflicts over social media.

Target Variable: An Addicted Score used to measure the severity of social media dependency.

# Project Objective
The primary objective is to identify patterns of social media addiction among students and quantify its correlation with negative outcomes such as sleep deprivation and declining mental health. The project aims to answer:

Which platforms are most associated with high addiction scores?

How does addiction level affect physical and mental well-being?

Which student demographics are most "at-risk"?

# Derivatives & Methodology
## 1. SQL Analysis (Data Processing)
The file student_social_media_addiction.sql contains the logic used to clean and segment the data.

Categorization: Created a three-tier addiction status (Low, Medium, High) based on the raw scores.

Aggregation: Computed KPIs for each tier, such as average sleep and mental health scores.

Segmented Summaries: Generated specific tables (exported as .csv) to analyze addiction distribution by Country, Gender, and Platform.

## 2. Power BI Visualization
The Social Media Addiction Dashboard.pbix provides a visual narrative of the findings:

Platform Insights: Visualizes that Instagram (37.5%) and TikTok (32.6%) dominate the "High Addiction" category.

Health Correlations: Highlights a clear trend where "High" addiction correlates with a drop in average sleep (from ~8.1 hours in Low to ~6.2 hours in High).

Demographic Breakdown: Shows that Undergraduate students represent nearly half (49.56%) of the total sample, making them a primary focus for intervention.

# Repository Structure
_25_student_social_media_addiction.csv: The raw dataset.

student_social_media_addiction.sql: SQL scripts for data transformation.

Social Media Addiction Dashboard.pbix: The Power BI report file.

describe_*.csv: Processed summary files used as data sources for the dashboard.
