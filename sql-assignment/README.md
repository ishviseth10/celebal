# 🛒 ShopEase SQL Assignment — Week 2

**Celebal Summer Internship 2026 | Data Engineering**

\---

## 📋 Overview

This folder contains my SQL answers for Week 2 of the assignment. The work is based on a simple e-commerce database and covers the basics of SQL, filtering, aggregation, joins, and transactions.

I also added a small bonus section using the Sample Superstore dataset to practice a few real-world business queries.

\---

### 🗂️ Folder Structure

### ```

sql-assignment/

│

├── Setup/

│   └── setup\_database.sql        ← CREATE TABLE, CREATE INDEX, INSERT data, validation

│

├── Section\_A/

│   └── basic\_queries.sql         ← Q1–Q6: SELECT, constraints, primary keys

│

├── Section\_B/

│   └── filtering\_queries.sql     ← Q7–Q12: WHERE, indexes, SARGable queries

│

├── Section\_C/

│   └── aggregation\_queries.sql   ← Q13–Q18: GROUP BY, COUNT, SUM, AVG, MIN, MAX, HAVING

│

├── Section\_D/

│   └── joins\_queries.sql         ← Q19–Q23: INNER JOIN, LEFT JOIN, multi-table JOINs

│

├── Section\_E/

│   └── advanced\_queries.sql      ← Q24–Q27: CASE, ACID properties, Transactions

│

├── Superstore\_Analysis/

│   └── superstore\_queries.sql    ← Bonus: Full analysis of Sample Superstore dataset

│

└── README.md

```

\---

### 🗄️ Database Schema

The ShopEase database has 4 tables:

```

customers  ──(1:N)──▶  orders  ──(1:N)──▶  order\_items  ◀──(1:N)──  products

```

Table	Primary Key	Key Columns

`customers`	`customer\_id`	email (UNIQUE), city, state, join\_date, is\_premium

`products`	`product\_id`	category, brand, unit\_price (CHECK > 0), stock\_qty

`orders`	`order\_id`	customer\_id (FK), order\_date, status (CHECK), total\_amount

`order\_items`	`item\_id`	order\_id (FK), product\_id (FK), quantity, discount\_pct

\---

### 📝 Questions Covered

Section A — SQL Basics

Q#	Topic

Q1	SELECT \* from customers

Q2	Column selection

Q3	DISTINCT categories

Q4	Primary Key explanation

Q5	Email UNIQUE constraint behavior

Q6	CHECK constraint violation (unit\_price = -50)

Section B — Filtering \& Optimization

Q#	Topic

Q7	WHERE status = 'Delivered'

Q8	Multi-condition WHERE filter

Q9	Date + state filtering

Q10	BETWEEN date range with exclusion

Q11	Index explanation \& sample query

Q12	SARGable query rewrite (YEAR() anti-pattern)

Section C — Aggregation

Q#	Topic

Q13	COUNT total orders

Q14	SUM revenue for Delivered orders

Q15	AVG price per category

Q16	GROUP BY status with COUNT + SUM

Q17	MAX + MIN price per category

Q18	HAVING clause to filter groups

Section D — Joins

Q#	Topic

Q19	INNER JOIN orders + customers

Q20	LEFT JOIN all customers with orders

Q21	3-table JOIN: orders → order\_items → products

Q22	LEFT vs RIGHT vs FULL OUTER JOIN explanation

Q23	Foreign key relationships + referential integrity

Section E — Advanced

Q#	Topic

Q24	CASE price tier classification

Q25	CASE inside aggregate function

Q26	ACID properties with bank transfer example

Q27	Full transaction block (START TRANSACTION...COMMIT/ROLLBACK)

\---

### 🔧 How to Run

All queries were written and tested using MySQL Workbench.



1\. Open MySQL Workbench and connect to your local server.

2\. Open a new SQL tab and run the setup script first to create the database, tables, indexes, and load the sample data:

```sql

CREATE DATABASE shopease\_db;

USE shopease\_db;

\-- then run Setup/setup\_database.sql

```

3\. Once the setup runs successfully (verify with a quick `SELECT \* FROM customers;`), open each section file one by one and execute the queries:

```

Section\_A/basic\_queries.sql

Section\_B/filtering\_queries.sql

Section\_C/aggregation\_queries.sql

Section\_D/joins\_queries.sql

Section\_E/advanced\_queries.sql

```

4\. For the bonus section, import the Sample Superstore CSV into a table in the same database, then run `Superstore\_Analysis/superstore\_queries.sql`.



> \*\*Note:\*\* All queries use MySQL syntax (e.g. `START TRANSACTION`, `DESCRIBE`, `CHECK` constraints as supported in MySQL 8+).

\---

### 📊 Superstore Dataset — Key Insights

Insight	Finding

Top Region	West → $725,457 in sales

Best Margin	Technology → 17.4% profit margin

Worst Sub-Category	Tables → $17,725 net loss

Discount Threshold	Discounts > 20% → average negative profit

Revenue Growth	$484K (2014) → $733K (2017), +51% in 4 years

Top Customer	Sean Miller ($25,043 sales, but negative profit!)

\---

### ✅ Notes

I used simple aliases like `c` for customers and `o` for orders to keep the queries readable.

Each section is written as a separate file, so it is easy to open and review.

I tried to keep the queries practical and close to the assignment requirements.

Where possible, I used index-friendly queries instead of less efficient patterns.

\---

Submitted by: ishvi seth

