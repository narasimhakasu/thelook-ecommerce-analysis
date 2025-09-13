CREATE OR REPLACE TABLE `thelook-ecommerce-insights.summary_tables.distribution_operations_summary` AS
SELECT
  -- Keys
  inv.product_distribution_center_id,
  o.order_id,
  oi.product_id,
  p.category,
  p.department,
  p.brand,

  -- Dates (for time trends)
  DATE(o.created_at) AS order_date,
  FORMAT_DATE("%Y-%m", o.created_at) AS order_month,

  -- Revenue & Profit
  oi.sale_price AS revenue,
  (oi.sale_price - p.cost) AS profit,

  -- Returns & Delivery Status
  CASE WHEN oi.returned_at IS NOT NULL THEN 1 ELSE 0 END AS is_returned,
  CASE WHEN oi.delivered_at IS NOT NULL THEN 1 ELSE 0 END AS is_delivered

FROM `thelook-ecommerce-insights.thelook_staging.order_items` oi
JOIN `thelook-ecommerce-insights.thelook_staging.products` p
  ON oi.product_id = p.id
JOIN `thelook-ecommerce-insights.thelook_staging.inventory_items` inv
  ON oi.inventory_item_id = inv.id
JOIN `thelook-ecommerce-insights.thelook_staging.orders` o
  ON oi.order_id = o.order_id;