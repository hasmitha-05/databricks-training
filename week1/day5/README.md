# SQL Notes

## Topics Covered
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- JOINS
- Aggregate Functions
- Subqueries
- Window Functions
- Ranking Functions
- NULL Handling

# SELECT

Used to retrieve data from a table.

# WHERE

Used to filter rows based on conditions.

# ORDER BY

Used to sort data in ascending or descending order.

- ASC → Ascending
- DESC → Descending

# GROUP BY

Used to create groups based on column values.

# HAVING

Used to filter grouped data.

# INNER JOIN

Returns matching rows from both tables.

# LEFT JOIN

Returns all rows from left table and matching rows from right table.

# COUNT()

Counts rows or values.

# SUM()

Adds numeric values.

# AVG()

Calculates average value.

# MAX()

Finds highest value.

# MIN()

Finds lowest value.

# Subquery

A query written inside another query.

# ROW_NUMBER()

Assigns unique row numbers.

# RANK()

Assigns same rank for duplicate values and skips ranks.

# DENSE_RANK()

Assigns same rank for duplicate values without skipping ranks.

# PARTITION BY

Creates groups inside window functions.

# Running Total

Calculates cumulative total row by row.

# LAG()

Gets previous row value.

# LEAD()

Gets next row value.

# CUME_DIST()

Shows cumulative distribution in percentage form.

# PERCENT_RANK()

Shows percentage ranking of rows.

# NULL Handling

Used to identify or handle missing values.

# WHERE vs HAVING

| WHERE | HAVING |
|---|---|
| Filters rows | Filters groups |
| Used before GROUP BY | Used after GROUP BY |

# ROW_NUMBER vs RANK vs DENSE_RANK

| Function | Duplicate Values | Rank Skipping |
|---|---|---|
| ROW_NUMBER() | Different numbers | No |
| RANK() | Same rank | Yes |
| DENSE_RANK() | Same rank | No |

# SQL Execution Order

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. WINDOW FUNCTIONS
7. ORDER BY
8. LIMIT

---

# Conclusion

These SQL concepts are important for:
- Placements
- Internships
- Interviews
- Database Management
- Data Analysis
