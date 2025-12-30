Data Warehouse

End-to-end data warehouse implementation using SQL Server and Medallion Architecture (Bronze → Silver → Gold), focused on clean transformations and analytics-ready data.

Architecture

Bronze: Raw CSV ingestion (ERP & CRM)

Silver: Cleansing, deduplication, normalization, type enforcement

Gold: Star-schema models for analytics

What This Covers

ETL pipelines across warehouse layers

Data quality rules and validation

Fact & dimension modeling

Analytical SQL on sales, customers, and products

Latest-snapshot design (no historization).

Tech

SQL Server (Express) · SQL
Medallion Architecture · ETL · Star Schema · Data Quality · Analytics SQL

Outcome

Hands-on experience in data warehousing, SQL-based ETL, and analytics-oriented modeling.

🧠 Key Design Decisions

Medallion Architecture (Bronze → Silver → Gold)
Chosen to clearly separate raw ingestion, data cleansing, and analytics-ready modeling, improving maintainability and scalability.

SQL Server as the Warehouse Engine
Used to focus on core data warehousing concepts—ETL, modeling, and query optimization—without cloud vendor lock-in.

Silver Layer as the Quality Gate
All data quality rules (null handling, deduplication, normalization, type enforcement) are applied in the Silver layer to ensure clean downstream analytics.

Star Schema in the Gold Layer
Fact and dimension tables are designed to optimize analytical queries and simplify reporting use cases.

Latest Snapshot Strategy
The warehouse maintains only the most recent state of data to reduce complexity and keep the focus on transformation logic rather than historization.

Explicit Transformations Over Implicit Casting
Data types are explicitly cast during transformations to avoid hidden bugs and ensure predictable analytical behavior.
