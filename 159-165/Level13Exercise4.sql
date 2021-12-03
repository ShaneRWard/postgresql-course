-- use JOIN to
    -- return all department names, and if applicable, show the employee associated with that department name

SELECT dept,
    ename FROM employees
    RIGHT JOIN department USING(eid)
    ORDER BY dept;

-- can you use a subquery to get the same result?

SELECT dept AS "department name",
    (SELECT ename FROM employees
    WHERE department.eid=employees.eid)
    AS "employees"
    FROM department
    ORDER BY dept
;