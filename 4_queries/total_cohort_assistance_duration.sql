SELECT cohorts.name AS cohort, sum(completed_at - started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON student_id = student.id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration;