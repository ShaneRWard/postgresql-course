-- use JOIN to
    -- return the first name of all employees, and if applicable, show the employee's department name. 

SELECT 
    ename AS "employee name",
    dept
    FROM employees
    LEFT JOIN department USING(eid);

-- can you use a subquery to get the same result?

SELECT 
    ename AS "employee name", 
    (SELECT dept FROM department 
        WHERE department.eid = employees.eid) 
        AS "department name"
    FROM employees;