# 🛒 ShopEase SQL Assignment — Week 2
**Celebal Summer Internship 2026 | Data Engineering**

---

## 📋 Overview

This folder contains my SQL answers for Week 2 of the assignment. The work is based on a simple e-commerce database and covers the basics of SQL, filtering, aggregation, joins, and transactions.

I also added a small bonus section using the **Sample Superstore dataset** to practice a few real-world business queries.

---

## 🗂️ Folder Structure

```
sql-assignment/
│
├── Setup/
│   └── setup_database.sql        ← CREATE TABLE, CREATE INDEX, INSERT data, validation
│
├── Section_A/
│   └── basic_queries.sql         ← Q1–Q6: SELECT, constraints, primary keys
│
├── Section_B/
│   └── filtering_queries.sql     ← Q7–Q12: WHERE, indexes, SARGable queries
│
├── Section_C/
│   └── aggregation_queries.sql   ← Q13–Q18: GROUP BY, COUNT, SUM, AVG, MIN, MAX, HAVING
│
├── Section_D/
│   └── joins_queries.sql         ← Q19–Q23: INNER JOIN, LEFT JOIN, multi-table JOINs
│
├── Section_E/
│   └── advanced_queries.sql      ← Q24–Q27: CASE, ACID properties, Transactions
│
├── Superstore_Analysis/
│   └── superstore_queries.sql    ← Bonus: Full analysis of Sample Superstore dataset
│
└── README.md
```

---

## 🗄️ Database Schema

The ShopEase database has 4 tables:

```
customers  ──(1:N)──▶  orders  ──(1:N)──▶  order_items  ◀──(1:N)──  products
```

| Table | Primary Key | Key Columns |
|---|---|---|
| `customers` | `customer_id` | email (UNIQUE), city, state, join_date, is_premium |
| `products` | `product_id` | category, brand, unit_price (CHECK > 0), stock_qty |
| `orders` | `order_id` | customer_id (FK), order_date, status (CHECK), total_amount |
| `order_items` | `item_id` | order_id (FK), product_id (FK), quantity, discount_pct |

---

## 📝 Questions Covered

### Section A — SQL Basics
| Q# | Topic |
|---|---|
| Q1 | SELECT * from customers |
| Q2 | Column selection |
| Q3 | DISTINCT categories |
| Q4 | Primary Key explanation |
| Q5 | Email UNIQUE constraint behavior |
| Q6 | CHECK constraint violation (unit_price = -50) |

### Section B — Filtering & Optimization
| Q# | Topic |
|---|---|
| Q7 | WHERE status = 'Delivered' |
| Q8 | Multi-condition WHERE filter |
| Q9 | Date + state filtering |
| Q10 | BETWEEN date range with exclusion |
| Q11 | Index explanation & sample query |
| Q12 | SARGable query rewrite (YEAR() anti-pattern) |

### Section C — Aggregation
| Q# | Topic |
|---|---|
| Q13 | COUNT total orders |
| Q14 | SUM revenue for Delivered orders |
| Q15 | AVG price per category |
| Q16 | GROUP BY status with COUNT + SUM |
| Q17 | MAX + MIN price per category |
| Q18 | HAVING clause to filter groups |

### Section D — Joins
| Q# | Topic |
|---|---|
| Q19 | INNER JOIN orders + customers |
| Q20 | LEFT JOIN all customers with orders |
| Q21 | 3-table JOIN: orders → order_items → products |
| Q22 | LEFT vs RIGHT vs FULL OUTER JOIN explanation |
| Q23 | Foreign key relationships + referential integrity |

### Section E — Advanced
| Q# | Topic |
|---|---|
| Q24 | CASE price tier classification |
| Q25 | CASE inside aggregate function |
| Q26 | ACID properties with bank transfer example |
| Q27 | Full BEGIN...COMMIT/ROLLBACK transaction block |

---

## 🔧 How to Run

### Option 1: SQLite (Recommended for local testing)
```bash
sqlite3 shopease.db < Setup/setup_database.sql
sqlite3 shopease.db < Section_A/basic_queries.sql
# ... repeat for each section
```

### Option 2: MySQL
```sql
CREATE DATABASE shopease;
USE shopease;
SOURCE Setup/setup_database.sql;
```

### Option 3: PostgreSQL
```bash
createdb shopease
psql -d shopease -f Setup/setup_database.sql
```

> **Note:** Some examples use MySQL/PostgreSQL syntax, and I’ve kept SQLite-friendly alternatives where needed.

---

## 📊 Superstore Dataset — Key Insights

| Insight | Finding |
|---|---|
| **Top Region** | West → $725,457 in sales |
| **Best Margin** | Technology → 17.4% profit margin |
| **Worst Sub-Category** | Tables → $17,725 net loss |
| **Discount Threshold** | Discounts > 20% → average negative profit |
| **Revenue Growth** | $484K (2014) → $733K (2017), +51% in 4 years |
| **Top Customer** | Sean Miller ($25,043 sales, but negative profit!) |

---

## ✅ Notes

- I used simple aliases like `c` for customers and `o` for orders to keep the queries readable.
- Each section is written as a separate file, so it is easy to open and review.
- I tried to keep the queries practical and close to the assignment requirements.
- Where possible, I used index-friendly queries instead of less efficient patterns.

---

*Submitted by: ishvi seth*
