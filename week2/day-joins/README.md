# SQL JOINS

## Introduction
SQL JOIN is used to combine data from multiple tables using a common column. Joins help retrieve related information stored in different tables.

# Types of SQL Joins

## INNER JOIN
Returns only the matching records from both tables.

## LEFT JOIN
Returns all records from the left table and matching records from the right table. If no match exists, NULL values are returned for the right table.

## RIGHT JOIN
Returns all records from the right table and matching records from the left table. If no match exists, NULL values are returned for the left table.

## FULL OUTER JOIN
Returns all matching and non-matching records from both tables. NULL values are returned where no match exists.

## CROSS JOIN
Returns all possible combinations of rows from both tables. Also called Cartesian Product.

## SELF JOIN
A table joined with itself to compare rows within the same table.

# Difference Between Joins

| JOIN Type | Result |
|------------|--------|
| INNER JOIN | Matching records only |
| LEFT JOIN | All left table records + matching right table records |
| RIGHT JOIN | All right table records + matching left table records |
| FULL OUTER JOIN | All records from both tables |
| CROSS JOIN | All possible row combinations |
| SELF JOIN | Compares rows within the same table |


# Advantages of SQL Joins

- Combines related data from multiple tables
- Reduces data redundancy
- Improves database normalization
- Helps in data analysis and reporting
- Retrieves meaningful information efficiently

# Applications of SQL Joins

- Employee and department management
- Customer and order analysis
- Student and course management
- Banking and transaction systems
- E-commerce and inventory systems

# Conclusion
SQL JOINS are essential for retrieving related data from multiple tables. Understanding different types of joins helps in writing efficient and accurate SQL queries.
