# 🇧🇷 Brazil E-commerce Analytics Cloud Data Warehouse

A modern cloud analytics data warehouse built on **Google BigQuery** using **dbt** and **Power BI** to transform raw Brazilian e-commerce data into reliable business insights.

---

# Dashboard Preview

## Executive Dashboard

![Executive Dashboard](images/executive_dashboard.png)

## Customer Analytics Dashboard

![Customer Analytics](images/customer_analytics.png)

---

# Project Overview

This project demonstrates the design and implementation of a cloud analytics data warehouse following modern Analytics Engineering best practices.

The warehouse transforms raw transactional data into a clean, analytics-ready model that supports business reporting and executive decision-making.

---

# Architecture

```
Raw Dataset
      │
      ▼
Google BigQuery
      │
      ▼
dbt (Staging → Intermediate → Marts)
      │
      ▼
Power BI Dashboards
```

---

# Technology Stack

| Technology | Purpose |
|------------|---------|
| **Google BigQuery** | Cloud data warehouse for scalable analytical queries |
| **dbt** | Modular SQL transformations, testing, and data modeling |
| **SQL** | Data transformation and analytics |
| **Power BI** | Interactive business dashboards and reporting |
| **Git & GitHub** | Version control and collaboration |

---

# Data Modeling

The warehouse follows **Kimball's dimensional modeling** methodology using a **Star Schema**.

### Dimension Tables

- dim_customers
- dim_products
- dim_date

### Fact Table

- fact_orders

This design improves query performance, simplifies reporting, and provides a business-friendly analytical model.

---

# dbt Layers

### Staging

- Standardizes raw source tables
- Renames columns
- Casts data types
- Cleans source data

### Intermediate

- Applies reusable business logic
- Creates reusable joins
- Calculates business metrics

### Marts

- Builds analytics-ready fact and dimension tables
- Optimized for Power BI reporting

---

# Dashboards

The warehouse powers interactive business dashboards including:

- Executive Dashboard
- Sales Analytics
- Product Performance
- Customer Analytics

Key business metrics include:

- Revenue
- Orders
- Customers
- Average Order Value
- Revenue Trends
- Regional Performance

---

# Skills Demonstrated

- Cloud Data Warehousing
- Analytics Engineering
- BigQuery
- dbt
- SQL
- Dimensional Modeling
- Star Schema Design
- Power BI
- Data Modeling
- Business Intelligence

---

## Repository Structure

```
Brazil-Ecommerce-Analytics/
│
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
│
├── images/
├── dbt_project.yml
└── README.md
```
