CREATE OR REPLACE TABLE `thelook-ecommerce-insights.thelook_staging.revenue_summary` AS
SELECT
  o.order_id,
  o.user_id,
  oi.inventory_item_id,
inv.product_distribution_center_id,         -- from inventory_items
  o.created_at,
  o.delivered_at,
  
  oi.product_id,
  p.department,
  p.category,
  p.brand,
  p.cost,
  p.retail_price,
  oi.sale_price,
  p.name,
  
  -- Since quantity is not present, assuming each row = 1 unit
  oi.sale_price AS revenue,
  (oi.sale_price - p.cost) AS profit

FROM `thelook-ecommerce-insights.thelook_staging.orders_lifecycle_summary` o
JOIN `thelook-ecommerce-insights.thelook_staging.order_items` oi
  ON o.order_id = oi.order_id
JOIN `thelook-ecommerce-insights.thelook_staging.products` p
  ON oi.product_id = p.id
JOIN `thelook-ecommerce-insights.thelook_staging.inventory_items` inv
  ON oi.inventory_item_id = inv.id
WHERE o.order_stage = 'Delivered'
  AND o.is_returned = FALSE;