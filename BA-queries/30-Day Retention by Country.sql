WITH UserActivity AS (
  SELECT
    u.user_id,
    u.country,
    DATE_DIFF(DATE(t.trip_date), DATE(u.join_date), DAY) AS days_since_join
  FROM `product-analytics-494706.voltshift.users` AS u
  INNER JOIN `product-analytics-494706.voltshift.trips` AS t
    ON u.user_id = t.user_id
)
SELECT
  country,
  COUNT(DISTINCT user_id) AS total_users,
  COUNT(DISTINCT CASE WHEN days_since_join BETWEEN 0 AND 30 THEN user_id END) AS active_first_30_days,
  COUNT(DISTINCT CASE WHEN days_since_join > 30 THEN user_id END) AS active_after_30_days,
  ROUND(COUNT(DISTINCT CASE WHEN days_since_join > 30 THEN user_id END) / COUNT(DISTINCT user_id)* 100,2) AS retention_rate_pct
FROM UserActivity
GROUP BY
  country
ORDER BY
  retention_rate_pct DESC;