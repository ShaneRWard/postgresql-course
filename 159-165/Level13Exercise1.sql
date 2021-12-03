-- use JOIN to
    -- return the first name and department of all employees in the 'Sales' department.
 
SELECT ename AS "employee name", 
    dept AS "department name" FROM employees
    JOIN department USING(eid)
    WHERE dept = 'Management';

-- using subqueries
SELECT ename AS "employee name", 
    (SELECT dept FROM department 
        WHERE employees.eid = department.eid 
        AND dept = 'Management')
    AS "department name" FROM employees;