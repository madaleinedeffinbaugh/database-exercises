# 2
SELECT DISTINCT title FROM titles;

# 2 alternate
SELECT title from titles GROUP BY title;

# 3
SELECT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name;

# 4
SELECT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY first_name,last_name;

#  5
SELECT last_name FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# 6
SELECT last_name,COUNT(last_name) FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# 7
SELECT COUNT(gender),gender FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;