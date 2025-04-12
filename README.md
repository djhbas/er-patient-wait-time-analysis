# ER Patient Wait Time Analysis

## Overview

This repository contains the analysis of Emergency Room (ER) patient wait times, aimed at identifying inefficiencies and bottlenecks contributing to recent increases in wait times. The analysis utilizes a dataset containing patient arrival times, wait times, day of the week, staffing levels, and ER visit types. The analysis was performed using Excel for **data preparation**, SQL for **data querying and aggregation**, Power BI for **data visualization**, and Google Colab (Python) for **data exploration**.

## Dataset Description

The dataset includes the following columns:

-   `Patient_ID`: Unique identifier for each patient.
-   `Arrival_Time`: Time of patient arrival at the ER.
-   `Wait_Time_Minutes`: Time (in minutes) the patient waited before being seen.
-   `Day_of_Week`: Day of the week the patient arrived.
-   `Staff_On_Duty`: Staffing level (high, medium, low).
-   `ER_Visit_Type`: Urgency level of the visit (urgent, non-urgent, critical).

## Analysis Performed

The analysis includes the following steps:

1.  **Data Preparation (Excel):**
    -   Conditional Formatting
    -   Pivot Tables and Charts
    -   Sorting and Filtering

2.  **Data Aggregation and Querying (SQL):**
    -   Identify the day with the most ER traffic.
    -   Identify days with longer delays.
    -   Calculate visit volume and wait time per day.
    -   Determine which staff had longer or shorter wait times.
    -   Categorize wait time severity.
    -   Generate rankings of staff performance.

3.  **Data Visualization (Power BI):**
    -   Create interactive dashboards to visualize wait time trends.
    -   Generate visualizations for:
        -    Slicers (Day, Staff, Visit Type)
        -    Cards displaying Average/Min/Max Waiting Time and Number of Patients
        -    Wait Time Trend Over Time by Day
        -    Wait Time by Day of Week
        -    Wait Time by Visit Type
        -    Wait Time by Staff on Duty

4.  **Exploratory Data Analysis (Python/Google Colab):**
    -   Generate summary statistics.
    -   Create a line chart to show wait time trends over time.
    -   Create a bar chart for wait time by day of the week.
    -   Create a box plot for wait time by staff level.
    -   Create a box plot for wait time by visit type.
    -   Create a matrix (heatmap) showing average wait time by day of the week and hour.

## Summary of Findings

* **Increased Average Wait Time:** The average wait time has noticeably increased over the past quarter.
* **Peak Hours:** Wait times are significantly higher during certain hours of the day, indicating potential bottlenecks during these periods.
* **Day of Week Impact:** Specific days of the week exhibit higher average wait times, suggesting a correlation between patient volume and day of the week.
* **Staffing Impact:** Lower staffing levels correlate with increased wait times.
* **ER Visit Type Impact:** Critical and Urgent patients are managed faster than non-urgent ones, but non-urgent patients still exhibit long wait times.

## Anomalies and Patterns

1.  **Highest Average Wait Time on Friday:**
    The data indicates that Fridays experience the highest average patient wait times. This appears to be influenced by having fewer staff on duty combined with a 
    higher proportion of critical visit types, which naturally require more intensive care and longer evaluation times.
2.  **Lowest Average Wait Time on Sunday:**
    Sundays show the lowest average waiting times regardless of whether the staffing levels are high or low. This suggests that the overall demand or case complexity on 
   Sundays is lower, meaning that even a reduced staff can manage patient flow effectively without significantly impacting wait times.

## Root Cause Analysis

1.  **Staffing Shortages During Peak Hours:** Insufficient staffing during peak hours leads to increased patient load per staff member, resulting in longer wait times.
2.  **High Volume of Non-Urgent Patients:** A significant influx of non-urgent patients can clog the ER, delaying care for urgent and critical cases.

## Recommendations

1.  **Optimize Staff Scheduling:** Implement dynamic staffing schedules that align with peak hours and high-volume days. Consider using predictive analytics to forecast patient volume and adjust staffing accordingly.
2.  **Triage Process Improvement:** Refine the triage process to efficiently prioritize urgent and critical cases. Consider a fast-track system for non-urgent patients to reduce their wait times and free up resources for more critical patients.
3.  **Patient Flow Management:** Implement a patient flow management system to track patient movement and identify bottlenecks in real-time. This could involve using digital tools to streamline patient registration, assessment, and treatment processes.
