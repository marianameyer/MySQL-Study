--Wildcards

--Primeiro, irei corrigir um dado errado (erro de digitação)
UPDATE branch_supplier 
SET supplier_name = 'Stamford Labels'
WHERE supplier_name = 'Stamford Lables';

SELECT * FROM branch_supplier;

-- Find any client's who are an LLC
SELECT * FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers who are in the label business
SELECT * FROM branch_supplier
WHERE supplier_name LIKE '%Label%';

-- Find any employee born on the 10th month
SELECT * FROM employee
WHERE birth_date LIKE '____-10%';

-- Find any clients who are schools
SELECT * FROM client
WHERE client_name LIKE '%school%';