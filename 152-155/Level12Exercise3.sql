-- return a single column that lists all of the customer names and employee names.

SELECT customers.cname FROM customers
    UNION SELECT employees.ename FROM employees
;