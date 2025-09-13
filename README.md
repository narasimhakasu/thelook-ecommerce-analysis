# TheLook E-Commerce Analysis

## 📖 Table of Contents
- [Project Overview](#-project-overview)
- [Business Objectives](#-business-objectives)
- [Tools & Technologies](#-tools--technologies)
- [Project Structure](#-project-structure)
- [Dashboard Pages](#-dashboard-pages)
- [Key Insights](#-key-insights)
- [How to Reproduce](#-how-to-reproduce)
- [Recommendations](#-recommendations)
- [References](#-references)
- [Author](#-author)

---

## 📌 Project Overview
This project analyzes **TheLook E-Commerce** public dataset (available in Google BigQuery) to uncover business insights across revenue, customer behavior, product performance, and distribution operations.  
The goal was to design a complete **data pipeline + interactive dashboard in Looker Studio**, following an end-to-end data analytics process.

The project is structured to demonstrate skills aligned with professional data analyst roles.

---

## 🎯 Business Objectives
1. How is the overall business performing in terms of **revenue, profit, and orders**?  
2. What are the key **monthly trends** in customer acquisition and revenue?  
3. Which **product categories** drive the most revenue and profitability?  
4. How do **customer demographics (age, gender, repeat status)** impact sales?  
5. What are the insights on **distribution centers and operations efficiency**?  

---

## 🛠️ Tools & Technologies
- **BigQuery SQL** → Data extraction, transformation, and summary tables  
- **Google Looker Studio** → Dashboard design & visualization  
- **GitHub** → Project documentation & version control  
- **Google Sheets/Docs** → For supporting documentation  

---

## 📂 Project Structure

- **sql_queries/** (All SQL scripts)  
  - [orders_lifecycle_summary.sql](sql_queries/orders_lifecycle_summary.sql)  
  - [revenue_summary.sql](sql_queries/revenue_summary.sql)  
  - [monthly_revenue.sql](sql_queries/monthly_revenue.sql)  
  - [products_summary.sql](sql_queries/products_summary.sql)  
  - [customer_summary.sql](sql_queries/customer_summary.sql)  
  - [distribution_operations_summary.sql](sql_queries/distribution_operations_summary.sql)  
  - [order_stage_summary.sql](sql_queries/order_stage_summary.sql)  

- **docs/** (Documentation)  
  - [business_questions.md](docs/business_questions.md)  
  - [data_pipeline.md](docs/data_pipeline.md)  
  - [methodology.md](docs/methodology.md)  
  - [recommendations.md](docs/recommendations.md)  

- **Dashboard/** (Dashboard screenshots)  
  - [page1_overview.png](dashboard/page1_overview.png)  
  - [page2_products.png](dashboard/page2_products.png)  
  - [page3_customers.png](dashboard/page3_customers.png)  
  - [page4_operations.png](dashboard/page4_operations.png)  
  - [dashboard_overview.pdf](dashboard/dashboard_overview.pdf)  

- **README.md** → Project overview (this file)  

---

## 📊 Dashboard Pages
Explore the full interactive dashboard here:  
👉 [TheLook E-Commerce Dashboard](https://lookerstudio.google.com/s/m2vkZuDORB4)

The dashboard is divided into 4 pages:

1. **Business Overview** → Revenue, profit, orders, order stages  
2. **Product Insights** → Revenue by category, top products, monthly product revenue  
3. **Customer Insights** → Demographics, repeat customers, age buckets  
4. **Distribution & Operations** → Revenue & orders by distribution centers, operational metrics  

---

## 🔑 Key Insights
- Revenue is strongly driven by **Men’s category**, followed by **Women’s**.  
- **Repeat customers** form a significant share of revenue growth.  
- Older age groups **(55+) dominate** purchases.  
- Distribution centers vary in performance, highlighting opportunities for **logistics optimization**.  

---

## 🚀 How to Reproduce
1. Connect to **BigQuery public dataset**: `bigquery-public-data.thelook_ecommerce`  
2. Run the queries from [`sql_queries/`](sql_queries/) to create staging and summary tables.  
3. Import summary tables into **Looker Studio**.  
4. Rebuild dashboard pages using charts, tables, and filters.  
5. Compare insights with documentation in [`docs/`](docs/).  

---

## 📈 Recommendations
- Improve **repeat customer retention strategies** (loyalty programs).  
- Optimize **distribution center load balancing**.  
- Focus on **high-revenue categories** while reducing underperforming products.  
- Leverage **age bucket segmentation** for targeted marketing.  

---

## 📑 References
- Data Source: [TheLook E-Commerce Public Dataset](https://console.cloud.google.com/marketplace/details/bigquery-public-data/thelook-ecommerce)  
- Google BigQuery Documentation  
- Looker Studio Documentation  

---

## 👤 Author
**Narasimha Kasu**  
📧 *narasimha.kasu9@gmail.com*  
