# COPIED FROM ORDER BY EXERCISE
# 2
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name;

# 3
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name, last_name;

# 4
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name, first_name;

# 5
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE 'E%E'
ORDER BY emp_no;

# 6 (all reversed)
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name DESC;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name DESC, last_name DESC;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;

# END COPY

# 2
SELECT CONCAT(first_name, ' ',last_name) AS full_name FROM employees WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;

# 3
SELECT * FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

# 4
SELECT * FROM employees WHERE month(birth_date) = 12
AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999;

# 5
SELECT * FROM employees WHERE month(birth_date) = 12
AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

# 6
SELECT DATEDIFF(hire_date,CURDATE()) AS days_worked FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

