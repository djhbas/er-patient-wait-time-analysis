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

1.  **Staffing Limitations on Peak Demand Days:**
      On days like Friday, the combination of reduced staffing and increased arrivals of critical cases creates a bottleneck. The current staff mix may not be sufficient      to handle the surge of complex cases, leading to extended wait times.

2.  **Inefficient Resource Allocation and Scheduling:**
      A potential mismatch between staff scheduling and patient arrival patterns may be contributing to the prolonged wait times. There appears to be a disconnect 
      between peak demand periods and the availability of specialized staff trained to handle critical visits.

## Recommendations

1.  **Optimize Staff Scheduling:**
      Adjust staffing schedules to better align with the identified peak periods, particularly on Fridays. Consider increasing the number of staff during these high- 
      demand times or rearranging shifts to ensure that more experienced or specialized personnel are available to manage critical cases.
   
2.  **Leverage Predictive Analytics:**
      Utilize historical data to forecast patient arrival trends and case complexities. Predictive analytics can help in planning and dynamically adjusting the resource 
      allocation ahead of time to minimize wait times during anticipated high-demand periods.
