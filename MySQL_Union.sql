--Union

-- Find a list of employee and branch names
SELECT first_name FROM employee
UNION
SELECT branch_name FROM branch;

-- Find a list of all clients & branch suppliers' names
SELECT client_name FROM client AS Clients_And_Branch_Supplier
UNION
SELECT supplier_name FROM branch_supplier;