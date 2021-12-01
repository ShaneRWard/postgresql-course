-- return all department names, and if applicable, show the employee associated with that department name

SELECT department.dept, employees.ename FROM department
    LEFT JOIN employees USING(eid);