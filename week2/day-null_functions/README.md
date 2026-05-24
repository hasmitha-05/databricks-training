# NULL FUNCTIONS IN SQL

## Introduction
NULL functions are used to handle missing or unknown values in SQL. These functions help in replacing NULL values, avoiding errors, and returning alternate values in queries.

## 1. ISNULL()

### Definition
Used to replace NULL with a specified value.

### Syntax
```sql
ISNULL(column, value)
```
### Usage
- Mostly used in SQL Server
- Replaces NULL with another value

## 2. IFNULL()

### Definition
Used to replace NULL with another value.

### Syntax
```sql
IFNULL(column, value)
```
### Usage
- Mostly used in MySQL
- Similar to ISNULL()

## 3. COALESCE()

### Definition
Returns the first non-null value from the given list.

### Syntax
```sql
COALESCE(value1, value2, value3...)
```
### Usage
- Works in most databases
- Used when checking multiple values

## 4. NULLIF()

### Definition
Returns NULL if two values are equal.

### Syntax
```sql
NULLIF(value1, value2)
```
### Usage
- Used to avoid divide-by-zero errors
- Used for conditional NULL values

## 5. NVL()

### Definition
Used to replace NULL with another value.

### Syntax
```sql
NVL(column, value)
```
### Usage
- Used in Oracle database
- Similar to ISNULL()

## Important Notes

- NULL means missing or unknown value
- NULL is not equal to 0
- NULL is not an empty string
- Arithmetic operations with NULL return NULL

---

## Common NULL Functions

| Function | Database | Purpose |
|----------|----------|----------|
| ISNULL() | SQL Server | Replace NULL |
| IFNULL() | MySQL | Replace NULL |
| COALESCE() | Most Databases | First non-null value |
| NULLIF() | Most Databases | Returns NULL if equal |
| NVL() | Oracle | Replace NULL |

## Conclusion

NULL functions are important in SQL for handling missing values, improving query accuracy, and avoiding calculation errors. They are widely used in database operations and real-time applications.
