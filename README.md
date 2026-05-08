# Data Warehouse and Analytics Project
Building a modern data warehouse with Postgre SQL, including ETL processes, data modeling, and analytics.This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.
#
# 🏗️ Data Architecture
<img width="1299" height="652" alt="Screenshot 2026-05-08 at 10 49 22 AM" src="https://github.com/user-attachments/assets/6b68941c-fff9-4f29-bd09-7b5a01ea95aa" />

#
1. **Bronze Layer**: Stores raw data as-is from the source systems. Data is ingested from CSV Files into PostgreSQL Database.
2. **Silver Layer**: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
3. **Gold Layer**: Houses business-ready data modeled into a star schema required for reporting and analytics.

# 📖 Project Overview
This project involves:

  1.**Data Architecture**: Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.
  2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
  3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
  4. **Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights.

# 🚀 Project Requirements
#Building the Data Warehouse (Data Engineering)

**Objective**

Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

**Specifications**
 
  1. Data Sources: Import data from two source systems (ERP and CRM) provided as CSV files.
  2. Data Quality: Cleanse and resolve data quality issues prior to analysis.
  3. Integration: Combine both sources into a single, user-friendly data model designed for analytical queries.
  4. Scope: Focus on the latest dataset only; historization of data is not required.
  5. Documentation: Provide clear documentation of the data model to support both business stakeholders and analytics teams.
  6. BI: Analytics & Reporting (Data Analysis)

**Objective**

Develop SQL-based analytics to deliver detailed insights into:

  1. Customer Behavior
  2. Product Performance
  3. Sales Trends
These insights empower stakeholders with key business metrics, enabling strategic decision-making.
