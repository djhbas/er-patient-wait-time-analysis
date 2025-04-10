# ER Patient Wait Time Analysis

## Overview

This repository contains the analysis of Emergency Room (ER) patient wait times, aimed at identifying inefficiencies and bottlenecks contributing to recent increases in wait times. The analysis utilizes a dataset containing patient arrival times, wait times, day of the week, staffing levels, and ER visit types. The analysis was performed using Power BI for data visualization and Google Colab (Python) for statistical analysis.

## Dataset Description

The dataset includes the following columns:

-   `Patient_ID`: Unique identifier for each patient.
-   `Arrival_Time`: Time of patient arrival at the ER.
-   `Wait_Time_Minutes`: Time (in minutes) the patient waited before being seen.
-   `Day_of_Week`: Day of the week the patient arrived.
-   `Staff_On_Duty`: Staffing level (high, medium, low).
-   `ER_Visit_Type`: Urgency level of the visit (urgent, non-urgent, critical).

## Summary of Findings

* **Increased Average Wait Time:** The average wait time has noticeably increased over the past quarter.
* **Peak Hours:** Wait times are significantly higher during certain hours of the day, indicating potential bottlenecks during these periods.
* **Day of Week Impact:** Specific days of the week exhibit higher average wait times, suggesting a correlation between patient volume and day of the week.
* **Staffing Impact:** Lower staffing levels correlate with increased wait times.
* **ER Visit Type Impact:** Critical and Urgent patients are managed faster than non-urgent ones, but non-urgent patients still exhibit long wait times.

## Key Statistics

* **Average Wait Time:** Calculated and visualized using Power BI and Python.
* **Median Wait Time:** Calculated to provide a robust measure of central tendency.
* **Peak Arrival Hours:** Identified using time series analysis in Python and visualized in Power BI.
* **Wait Time Distribution:** Analyzed to understand the spread and skewness of wait times.

## Anomalies and Patterns

* Longer wait times are observed during peak hours, particularly in the evening.
* Weekends, especially Sundays, show a significant increase in wait times.
* Low Staffing levels result in a clear increase in wait times.

## Root Cause Analysis

1.  **Staffing Shortages During Peak Hours:** Insufficient staffing during peak hours leads to increased patient load per staff member, resulting in longer wait times.
2.  **High Volume of Non-Urgent Patients:** A significant influx of non-urgent patients can clog the ER, delaying care for urgent and critical cases.

## Recommendations

1.  **Optimize Staff Scheduling:** Implement dynamic staffing schedules that align with peak hours and high-volume days. Consider using predictive analytics to forecast patient volume and adjust staffing accordingly.
2.  **Triage Process Improvement:** Refine the triage process to efficiently prioritize urgent and critical cases. Consider a fast-track system for non-urgent patients to reduce their wait times and free up resources for more critical patients.
3.  **Patient Flow Management:** Implement a patient flow management system to track patient movement and identify bottlenecks in real-time. This could involve using digital tools to streamline patient registration, assessment, and treatment processes.
