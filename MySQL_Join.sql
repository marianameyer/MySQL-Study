--Join
--MySQL não possui FULL OUTER JOIN

-- Add the extra branch
INSERT INTO branch VALUES 
(4, 'Buffalo', NULL, NULL);

SELECT * FROM branch;

-- JOIN
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- LEFT JOIN
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- RIGHT JOIN
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;