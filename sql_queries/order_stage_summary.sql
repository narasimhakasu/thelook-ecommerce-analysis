CREATE OR REPLACE TABLE `thelook-ecommerce-insights.summary_tables.order_stage_summary` AS
SELECT
  order_stage,
  COUNT(*) AS total_orders,
  ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER(), 2) AS pct_orders
FROM `thelook-ecommerce-insights.thelook_staging.orders_lifecycle_summary`
GROUP BY order_stage
ORDER BY total_orders DESC;
