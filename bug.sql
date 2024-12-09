```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might lead to unexpected results if there are no employees in department 10 with a salary greater than 100000.  The query will return an empty dataset. While not strictly an error, it's a logic flaw that might lead developers to assume the department has no high-earners when, in fact, the data might be missing or the query needs adjustment.