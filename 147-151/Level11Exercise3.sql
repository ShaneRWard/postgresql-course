-- return the first name of all employees, and if applicable, show the employee's department name.

SELECT employees.ename, department.dept FROM employees 
    LEFT JOIN department USING(eid);