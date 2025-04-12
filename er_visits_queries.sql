SELECT * FROM er_visits

-- day has the most ER traffic
SELECT 
  day_of_week, 
  COUNT(*) AS total_visits
FROM 
  er_visits
GROUP BY 
  day_of_week
ORDER BY 
  total_visits DESC;

-- days with longer delays
SELECT 
  day_of_week, 
  AVG(wait_time_minutes) AS avg_wait_time
FROM 
  er_visits
GROUP BY 
  day_of_week
ORDER BY 
  avg_wait_time DESC;

-- visit volume and wait time per day
SELECT 
  day_of_week,
  COUNT(*) AS total_visits,
  AVG(wait_time_minutes) AS avg_wait_time
FROM 
  er_visits
GROUP BY 
  day_of_week
ORDER BY 
  total_visits DESC;

-- staff had longer or shorter wait times
SELECT 
  staff_on_duty,
  COUNT(*) AS handled_cases,
  AVG(wait_time_minutes) AS avg_wait_time
FROM 
  er_visits
GROUP BY 
  staff_on_duty
ORDER BY 
  avg_wait_time DESC;

-- classify wait time severity
SELECT 
  patient_id,
  wait_time_minutes,
  CASE 
    WHEN wait_time_minutes <= 15 THEN 'Low'
    WHEN wait_time_minutes <= 45 THEN 'Moderate'
    ELSE 'High'
  END AS wait_severity
FROM 
  er_visits;

-- ranking staffs performance
SELECT 
  staff_on_duty,
  COUNT(*) AS total_cases,
  AVG(wait_time_minutes) AS avg_wait_time,
  RANK() OVER (ORDER BY AVG(wait_time_minutes)) AS performance_rank
FROM 
  er_visits
GROUP BY 
  staff_on_duty;








