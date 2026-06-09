WITH UserActivity as (
  
  SELECT
    u.user_id,
    u.gender,
    CASE
      WHEN u.age BETWEEN 18 AND 24 THEN '18-24'
      WHEN u.age BETWEEN 25 AND 34 THEN '25-34'
      WHEN u.age BETWEEN 35 AND 44 THEN '35-44'
      ELSE '45+'
    END AS age_group,
    MAX(DATE_DIFF(DATE(t.trip_date),DATE(u.join_date),DAY)) AS max_active_days
  FROM `product-analytics-494706.voltshift.users` AS u
  LEFT JOIN `product-analytics-494706.voltshift.trips` AS t
    ON u.user_id = t.user_id
  GROUP BY
    1,2,3
)
SELECT
  age_group,
  gender,
  COUNT(user_id) AS total_cohort_size,
  COUNTIF(max_active_days > 30) AS retained_users,
  ROUND((COUNTIF(max_active_days > 30) / COUNT(user_id)) * 100,2) AS retention_rate_pct
FROM UserActivity
GROUP BY
  age_group,
  gender
HAVING total_cohort_size > 15
ORDER BY
  retention_rate_pct DESC;