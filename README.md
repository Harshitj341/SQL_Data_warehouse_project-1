Data Warehouse & Analytics Project

This repository demonstrates an end-to-end data warehouse implementation using SQL Server and Medallion Architecture (Bronze → Silver → Gold).
The project focuses on data engineering fundamentals, clean transformations, and analytics-ready modeling.

🏗️ Architecture Overview

The warehouse is structured using the Medallion Architecture:

Bronze Layer
Raw data ingestion from CSV files (ERP & CRM sources) into SQL Server.

Silver Layer
Data cleansing, standardization, deduplication, and type enforcement.

Gold Layer
Business-ready data modeled into a star schema for analytics and reporting.

📌 Project Scope

Designed a modern data warehouse using SQL Server

Built ETL pipelines to move data across Bronze, Silver, and Gold layers

Applied data quality rules (null handling, normalization, validation)

Created fact and dimension tables optimized for analytical queries

Performed SQL-based analytics on sales, customers, and products

Focus is on the latest snapshot of data (no historization).

🛠️ Tech Stack

Database: SQL Server (Express)

Language: SQL

Concepts:

Medallion Architecture

ETL Pipelines

Data Modeling (Star Schema)

Data Cleansing & Validation

Analytical SQL

🎯 Learning Outcomes

This project showcases practical experience in:

Data Warehousing

SQL-based ETL Development

Data Cleaning & Transformation

Dimensional Modeling

Analytics-Oriented Design
