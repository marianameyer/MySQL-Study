--Usando Queries Básicas

-- Find all employees
SELECT * FROM employee;

-- Find all clients
SELECT * FROM client;

-- Find all employees ordered by salary
SELECT * FROM employee 
ORDER BY salary;

-- Find all employees ordered by sex then name
SELECT * FROM employee 
ORDER BY sex, first_name;

-- Find the first 5 employees in the table
SELECT * FROM employee
LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, last_name FROM employee;

-- Find the forename(firts_name) and surnames(last_name) 
--names of all employees
SELECT first_name AS Forename, last_name AS Surname
FROM employee;

-- Find out all the different genders
SELECT DISTINCT(sex) FROM employee;

-- Find all male employees
SELECT * FROM employee
WHERE sex = 'M';

-- Find all employees at branch 2
SELECT * FROM employee
WHERE branch_id = 2;

-- Find all employee's id's and names who were born 
--after 1969
SELECT emp_id, first_name, last_name FROM employee
WHERE birth_date > '1969-12-31';

-- Find all female employees at branch 2
SELECT * FROM employee
WHERE sex = 'F' AND branch_id = 2;

-- Find all employees who are female & born after 1969 
--or who make over 80000
SELECT * FROM employee
WHERE (sex = 'F' AND birth_date > '1969-12-31') 
OR salary > 80000;

-- Find all employees born between 1970 and 1975
SELECT * FROM employee
WHERE birth_date BETWEEN '1970-01-01' AND '1975-12-31';

-- Find all employees named Jim, Michael, Johnny or David
SELECT * FROM employee
WHERE first_name IN ('Jim', 'Michael', 'Johny', 'David');