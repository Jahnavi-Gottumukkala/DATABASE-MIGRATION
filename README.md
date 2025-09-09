
# DATABASE-MIGRATION

This repository contains scripts and CSV files for migrating a database from SQL Server/MySQL to PostgreSQL.

## Folder Structure

- `source_db.sql` : SQL script for the original database (SQL Server/MySQL)
- `target_db.sql` : SQL script to create PostgreSQL tables
- `csv_files/` : CSV exports of tables to be imported into PostgreSQL

## Steps to Use

1. Install PostgreSQL.
2. Create a new database in PostgreSQL.
3. Run `target_db.sql` in the PostgreSQL shell (`psql`) to create tables.
4. Import CSV files using the `COPY` command:

```sql
COPY Customers(CustomerID, CustomerName, ContactName, Country)
FROM 'C:/path/to/csv_files/customers.csv'
DELIMITER ',' CSV HEADER;

COPY Products(ProductID, ProductName, Price)
FROM 'C:/path/to/csv_files/products.csv'
DELIMITER ',' CSV HEADER;

COPY Orders(OrderID, CustomerID, ProductID, Quantity, OrderDate)
FROM 'C:/path/to/csv_files/orders.csv'
DELIMITER ',' CSV HEADER;
