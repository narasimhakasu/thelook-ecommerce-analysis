# Data Pipeline

The project follows a structured data pipeline using **Google BigQuery** for transformations:

1. **Source Data**
   - Public dataset: `bigquery-public-data.thelook_ecommerce`
   - Tables used: `orders`, `order_items`, `products`, `users`, `inventory_items`

2. **Staging Dataset**
   - Dataset: `thelook_staging`
   - Created base summary tables:
     - `order_lifecycle_summary`
     - `revenue_summary`

3. **Summary Tables**
   - Dataset: `summary_tables`
   - Created for dashboard insights:
     - `monthly_revenue`
     - `products_summary`
     - `customer_summary`
     - `distribution_operations_summary`
     - `order_stage_summary`

4. **Visualization**
   - Summary tables connected to **Looker Studio**
   - 4 dashboard pages built to answer business questions

This pipeline ensures clean, modular, and reproducible transformations.
