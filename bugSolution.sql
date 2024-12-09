```sql
-- Solution 1: Check for data existence first
IF EXISTS (SELECT 1 FROM employees WHERE department_id = 10 AND salary > 100000) 
BEGIN
    SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
END
ELSE
BEGIN
    SELECT 'No employees found matching criteria' AS Message;
END;

-- Solution 2: Using UNION ALL to show 'No data' if no result is found
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000
UNION ALL
SELECT 'No employees found' AS Department, NULL AS EmployeeID, NULL AS Name, NULL AS Salary
WHERE NOT EXISTS (SELECT 1 FROM employees WHERE department_id = 10 AND salary > 100000);
```