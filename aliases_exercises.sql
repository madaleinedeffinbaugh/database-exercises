# 3
SELECT concat(last_name, ', ', first_name) AS full_name
FROM employees LIMIT 10;

# 4
SELECT concat(last_name, ', ', first_name) AS full_name,
birth_date AS DOB FROM employees LIMIT 10;

# 5
SELECT concat(emp_no, ' - ',last_name, ',', first_name)
AS full_name,birth_date AS DOB FROM employees LIMIT 10;