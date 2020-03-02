-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
  FROM cohorts
  JOIN students ON cohorts.id = cohort_id
  GROUP BY cohorts_name
  HAVING count(students.*) >= 18
  ORDER BY student_count;
