-- use UNION to
    -- return a single column that lists all of the customer names and employee names. 

SELECT customers.cname from customers 
    UNION 
    SELECT employees.ename FROM employees;

-- can you use a subquery to get the same result?

-- Frankly, I can't see how to produce the same result without using UNION and subqueries seems to make it implausable.