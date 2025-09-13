# Methodology

The analysis followed a structured approach:

1. **Data Understanding**
   - Explored available tables (orders, order_items, products, users, inventory_items).
   - Identified relationships between entities.

2. **Data Preparation**
   - Created staging tables (`order_lifecycle_summary`, `revenue_summary`).
   - Applied filters to exclude incomplete or returned orders.
   - Standardized fields like month, revenue, and profit.

3. **Feature Engineering**
   - Derived revenue, profit, and customer repeat flags.
   - Grouped users into **age buckets**.
   - Aggregated data for monthly, product, customer, and distribution summaries.

4. **Dashboard Design**
   - Built 4 pages: Business Overview, Product Insights, Customer Insights, Distribution & Operations.

5. **Analysis**
   - Answered business questions using charts and KPIs.
   - Documented key findings and insights.

This methodology aligns with the **Google Data Analytics Certificate process** (Ask → Prepare → Process → Analyze → Share → Act).
