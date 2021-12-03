-- use JOIN to
    -- return the first name and department of all employees in the 'Sales' department.
 
SELECT ename AS "employee name", 
    dept AS "department name"
    FROM employees
    JOIN department USING(eid)
    WHERE dept = 'Management';

-- can you use a subquery to get the same result?

SELECT ename AS "employee name", 
    (SELECT dept FROM department 
    WHERE department.eid = employees.eid)
    FROM employees
    JOIN department USING(eid)
    WHERE dept = 'Management';