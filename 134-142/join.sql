SELECT * FROM employees;
SELECT * FROM department;

-- INNER JOIN - Matches up tables based on given criteria, some data may be excluded because it doens't match up.
-- SELECT employees.ename, department.dept FROM employees JOIN department ON employees.eid = department.eid;

-- USING: USING Clause is used to match only one column when more than one column matches.
-- SELECT employees.ename, department.dept FROM employees JOIN department USING(eid);

-- INTERSECT: Selects the data where these two tables intersect, in this case, the eid
-- SELECT employees.eid FROM employees INTERSECT SELECT department.eid FROM department;


-- LEFT JOIN - Matches up tables on given criteria, will show matched data first, then unpaired data after
-- SELECT employees.ename, department.dept FROM employees LEFT JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees LEFT JOIN department USING(eid);


-- RIGHT JOIN - Same as Left join but uses right table instead. Will show unpaired data from right table instead of left
-- SELECT employees.ename, department.dept FROM employees RIGHT JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees RIGHT JOIN department USING(eid);


-- FULL JOIN - Shows all data from both tables, including unpaired data
-- SELECT employees.ename, department.dept FROM employees FULL JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees FULL JOIN department USING(eid);

-- EXCEPT - The SQL EXCEPT statement returns those records from the left SELECT query, 
--      that are not present in the results returned by the SELECT query on the right side of the EXCEPT statement.
-- SELECT employees.eid FROM employees EXCEPT SELECT department.eid FROM department;
-- SELECT department.eid FROM department EXCEPT SELECT employees.eid FROM employees;

-- UNION
-- SELECT cname FROM customers UNION SELECT mname FROM movies;
-- SELECT cname FROM customers UNION SELECT mname FROM movies ORDER BY cname;
-- SELECT cname AS "RESULTS" FROM customers UNION SELECT mname FROM movies ORDER BY "RESULTS";

-- SELECT employees.ename, department.dept FROM employees INNER JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees LEFT OUTER JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees RIGHT OUTER JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees FULL OUTER JOIN department ON employees.eid = department.eid;

-- CROSS JOIN
-- SELECT * FROM employees CROSS JOIN department;

-- FULL JOIN multiple TABLES
-- SELECT customers.cname, movies.mname FROM customers JOIN rentals USING (cid) JOIN movies USING (mid);

-- NATURAL JOIN -- When the columns share the same name in two tables, they are joined by the common data
SELECT customers.cname, movies.mname FROM customers NATUrAL JOIN rentals NATURAL JOIN movies;