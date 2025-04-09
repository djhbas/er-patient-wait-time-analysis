# ER Patient Wait Time Analysis - Readme

## Project Overview

This project aims to analyze Emergency Room (ER) patient wait times to identify inefficiencies and bottlenecks that have contributed to recent increases. The analysis utilizes data to provide key statistics, identify patterns, and offer actionable recommendations for reducing wait times.

## Tools and Technologies

* **Power BI:**
    * Used for interactive data visualization and dashboard creation.
    * Allows for easy exploration of wait time trends, peak hours, and other relevant metrics.
* **Google Colab (Python):**
    * Used for data cleaning, preprocessing, and statistical analysis.
    * Libraries such as Pandas, NumPy, and Matplotlib/Seaborn are used for data manipulation and visualization.
    * Used for any complex calculations that are easier to do in python.
* **SQL (potentially):**
    * Used to Query and extract the data from the source database.

## Dataset

* The dataset includes information related to ER patient visits, including arrival times, treatment start times, and discharge times.
* It is assumed that the dataset contains the necessary columns to calculate wait times.
* It is assumed that the dataset has data for at least the past quarter.

## Analysis Steps

1.  **Data Extraction and Cleaning:**
    * Extract relevant data from the database using SQL queries (if applicable).
    * Clean and preprocess the data using Python (Pandas) to handle missing values, inconsistencies, and data type conversions.
2.  **Wait Time Calculation:**
    * Calculate the wait time for each patient visit by subtracting the arrival time from the treatment start time.
    * Calculate the time spent in the ER, this would be the difference between arrival time and discharge time.
3.  **Statistical Analysis:**
    * Calculate key statistics such as average wait time, median wait time, and standard deviation using Python (NumPy).
    * Identify peak hours and days by analyzing the distribution of patient arrivals and wait times.
4.  **Pattern and Anomaly Detection:**
    * Visualize wait time trends over time using line graphs in Power BI and/or Python (Matplotlib/Seaborn).
    * Identify any anomalies or patterns, such as long wait times during specific hours or days, using Power BI and/or Python.
5.  **Root Cause Analysis:**
    * Investigate potential reasons for the rise in wait times, such as staffing shortages, process delays, or increased patient volume.
    * Correlate the patient volume with the wait times.
6.  **Visualization:**
    * Create interactive dashboards in Power BI to visualize key findings, including wait time trends, peak hours, and patient volume.
    * Create static visualizations in python to display specific findings.
    * Examples:
        * Bar chart of average wait time by hour of day.
        * Line graph of average wait time over the past quarter.
        * Heatmap of wait times by day of the week and hour of the day.
7.  **Report Generation:**
    * Summarize findings, key statistics, patterns, root cause analysis, and recommendations in a clear and concise report.

## Report Structure

* **Summary of Findings:**
    * Key statistics (average wait time, median, peak hours, etc.).
    * Anomalies or patterns (e.g., long wait times during certain hours or days).
* **Root Cause Analysis:**
    * Possible reasons for the rise in wait times (e.g., staffing, process delays, volume of patients).
* **Recommendations:**
    * Actionable suggestions to help reduce wait times.
* **Visualizations:**
    * Supporting graphs and charts.

## Potential Visualizations

* **Average Wait Time by Hour of Day (Bar Chart):** To identify peak hours.
* **Average Wait Time Over Time (Line Graph):** To visualize trends over the past quarter.
* **Patient Volume by Hour of Day (Bar Chart):** To correlate patient volume with wait times.
* **Wait Time Distribution (Histogram/Box Plot):** To visualize the spread of wait times.
* **Wait Time by Day of the Week (Box Plot):** To compare wait times across different days.
* **Heatmap of Wait Times by Day of Week and Hour:** To see a more granular view of wait times.
