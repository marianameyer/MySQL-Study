--Nested Queries

-- Find names of all employees who have sold over 50,000
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 50000
);

-- Find all clients who are handles by the branch that 
-- Michael Scott manages (Assume you know Michael's ID)
SELECT employee.emp_id
FROM employee
WHERE employee.first_name = 'Michael';  --emp_id = 102

SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
);

-- Find all clients who are handles by the branch that 
-- Michael Scott manages (Assume you DONT'T know 
-- Michael's ID)
SELECT client.client_id, client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = (
        SELECT employee.emp_id
        FROM employee
        WHERE employee.first_name = 'Michael' AND employee.last_name = 'Scott'
    )
);

-- Find the names of employees who work with clients 
-- handled by the scranton branch
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
)
AND employee.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.branch_name = 'Scranton'
);

-- Find the names of all clients who have spent 
-- more than 100,000 dollars
SELECT client.client_name
FROM client
WHERE client.client_id IN (
    SELECT works_with.client_id
    FROM works_with
    WHERE works_with.total_sales > 100000
);

SELECT client.client_name
FROM client
WHERE client.client_id IN (
    SELECT client_id
    FROM (
        SELECT SUM(works_with.total_sales) AS sum_sales, works_with.client_id
        FROM works_with
        GROUP BY works_with.client_id
    ) AS total_client_sales
    WHERE sum_sales > 100000
);
