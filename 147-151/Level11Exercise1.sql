-- Do the following using the database movies:
-- return the first name and department of all employees in the 'Sales' department.

SELECT employees.ename, department.dept FROM employees 
    JOIN department USING(eid)
    WHERE department.dept = 'Sales'
;
