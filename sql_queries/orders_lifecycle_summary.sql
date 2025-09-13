CREATE OR REPLACE TABLE `thelook-ecommerce-insights.thelook_staging.orders_lifecycle_summary` AS
SELECT
  order_id,
  user_id,
  status,
  num_of_item,
  created_at,
  shipped_at,
  delivered_at,
  returned_at,

  -- Simple flags
  IF(shipped_at IS NULL, TRUE, FALSE) AS is_not_shipped,
  IF(delivered_at IS NULL, TRUE, FALSE) AS is_not_delivered,
  IF(returned_at IS NOT NULL, TRUE, FALSE) AS is_returned,

  -- Derived stage
  CASE
    WHEN returned_at IS NOT NULL THEN 'Returned'
    WHEN delivered_at IS NOT NULL THEN 'Delivered'
    WHEN shipped_at IS NOT NULL AND delivered_at IS NULL THEN 'Shipped_not_delivered'
    WHEN shipped_at IS NULL THEN 'Pending_or_Cancelled'
    ELSE 'Unknown'
  END AS order_stage,

  -- Durations (only when valid)
  CASE 
    WHEN shipped_at IS NOT NULL AND delivered_at IS NOT NULL
    THEN DATE_DIFF(delivered_at, shipped_at, DAY)
  END AS ship_to_delivery_days,

  CASE 
    WHEN delivered_at IS NOT NULL
    THEN DATE_DIFF(delivered_at, created_at, DAY)
  END AS order_to_delivery_days,

  CASE 
    WHEN returned_at IS NOT NULL AND delivered_at IS NOT NULL
    THEN DATE_DIFF(returned_at, delivered_at, DAY)
  END AS return_after_days

FROM `thelook-ecommerce-insights.thelook_staging.orders` ;