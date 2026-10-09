# Task 23: SQL Aggregation Basics

## Objective
Practice SQL aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`. Combine aggregate functions with `GROUP BY` and use `HAVING` to filter grouped results.

## Tools
- MySQL 8+ or PostgreSQL
- Any SQL editor (MySQL Workbench, pgAdmin, or an online SQL editor)

## Files
- `task23_aggregation_basics.sql` — creates the sample `sales` table, inserts sample data, and runs 10 aggregation queries.
- `results.md` — expected results and notes.

## How to run
1. Open your SQL editor and connect to a test database.
2. Open `task23_aggregation_basics.sql`.
3. Execute the script from top to bottom.
4. Run each query and compare the output with `results.md`.

> The script drops a table named `sales` if it already exists. Use a test database, or rename the table if you have your own table with that name.

## What I learned
- `COUNT(*)` counts every row.
- `COUNT(column)` counts only non-NULL values in that column.
- `SUM()` calculates a total.
- `AVG()` calculates an average.
- `MIN()` and `MAX()` find the smallest and largest non-NULL values.
- `GROUP BY` produces summaries for each category.
- `HAVING` filters groups after aggregation.
- Most aggregate functions ignore NULL values; `COUNT(*)` still counts the row.

## GitHub upload
1. Create a new GitHub repository named `task-23-sql-aggregation-basics`.
2. Upload the `.sql`, `README.md`, and `results.md` files.
3. Add a short repository description: `Task 23: SQL aggregation functions using a sample sales dataset.`
4. Copy the repository URL for your LinkedIn post.
