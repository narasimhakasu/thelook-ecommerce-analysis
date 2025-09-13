CREATE OR REPLACE TABLE `thelook-ecommerce-insights.thelook_staging.monthly_revenue` AS
SELECT
  FORMAT_DATE('%Y-%m', DATE(delivered_at)) AS month,
  SUM(revenue) AS total_revenue,
  SUM(profit) AS total_profit,
  COUNT(DISTINCT order_id) AS total_orders,
  AVG(DATE_DIFF(DATE(delivered_at), DATE(created_at), DAY)) as avg_delivery_days
FROM `thelook-ecommerce-insights.thelook_staging.revenue_summary`
GROUP BY month
ORDER BY month;
