CREATE OR REPLACE TABLE `thelook-ecommerce-insights.summary_tables.customer_summary` AS
SELECT
  u.id AS user_id,
  u.first_name,
  u.last_name,
  u.gender,
  u.age,
  u.country,

  COUNT(DISTINCT r.order_id) AS total_orders,
  SUM(r.revenue) AS total_revenue,
  SUM(r.profit) AS total_profit
FROM `thelook-ecommerce-insights.thelook_staging.revenue_summary` r
JOIN `thelook-ecommerce-insights.thelook_staging.users` u
  ON r.user_id = u.id
GROUP BY user_id, first_name, last_name, gender, age, country;