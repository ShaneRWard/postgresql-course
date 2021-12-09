-- // Update - Changes an existing record or records
-- SELECT pfirstname, plastname, ppoints FROM people;

-- UPDATE people SET ppoints = ppoints + 100;

-- SELECT pfirstname, plastname, ppoints FROM people;

-- // Synopsis
-- [ WITH [ RECURSIVE ] with_query [, ...] ]
-- UPDATE [ ONLY ] table [ * ] [ [ AS ] alias ]
--     SET { column = { expression | DEFAULT } |
--           ( column [, ...] ) = ( { expression | DEFAULT } [, ...] ) } [, ...]
--     [ FROM from_list ]
--     [ WHERE condition | WHERE CURRENT OF cursor_name ]
--     [ RETURNING * | output_expression [ [ AS ] output_name ] [, ...] ]


-- ^^^ RETURNING ^^^  - Returns values based on each row updated
-- UPDATE people SET ppoints = ppoints + 10 WHERE pid <= 10 RETURNING *;
-- UPDATE people SET ppoints = ppoints + 10 WHERE pid <= 10 RETURNING pid, ppoints;
-- SELECT pfirstname, plastname, ppoints AS "AFTER" FROM people LIMIT 10;


-- // Updating multiple fields
-- SELECT ppoints FROM people WHERE ppoints = 660;
-- UPDATE people SET pfirstname = 'John', plastname = 'Jones' WHERE ppoints =660;

-- // Updating with many TABLES
-- SELECT * FROM customers;

-- UPDATE customers
--     SET cname = CONCAT(cname, 'McClane')
--     WHERE customers.cid IN (SELECT rentals.cid 
--         FROM rentals NATURAL FULL JOIN movies
--         WHERE movies.mname = 'Transformers');

-- SELECT * FROM customers;

-- SELECT rentals.cid
--     FROM rentals NATURAL FULL JOIN movies
--     WHERE movies.mname = 'Transformers';


-- UPDATE customers
--     SET cname = CONCAT(cname, 'McClane')
--     FROM rentals, movies
--     WHERE customers.cid = rentals.cid 
--         AND rentals.mid = movies.mid
--         AND movies.mname = 'Transformers';

-- SELECT * FROM customers;


-- // Experiment //
-- SELECT customers.cid, cname, rid, mname
--     FROM customers, rentals, movies
--     WHERE customers.cid = rentals.cid
--     AND rentals.mid = movies.mid;

-- SELECT customers.cid, cname, rid, mname
--     FROM customers 
--     FULL JOIN rentals USING(cid)
--     FULL JOIN movies USING(mid);

-- SELECT customers.cid, cname, rid, mname
--     FROM customers 
--     FULL JOIN rentals ON (customers.cid = rentals.cid)
--     FULL JOIN movies ON (rentals.mid = movies.mid);


-- Many Tables 3
-- UPDATE customers
--     SET cname = CONCAT(customers.cname, 'McClane')
--     FROM customers AS c NATURAL JOIN rentals NATURAL JOIN movies
--     WHERE customers.cid = c.cid
--     AND movies.mname = 'Transformers';

-- SELECT * FROM customers;


-- // Transactions
-- Syntax:
-- START TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- <SQL COMMANDS>
-- COMMIT;

-- ...or...

-- BEGIN ISOLATION LEVEL SERIALIZABLE;
-- <SQL COMMANDS>
-- COMMIT;

-- Rollback
-- START TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- <SQL COMMANDS>
-- ROLLBACK;

-- START TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- <SQL COMMANDS>
-- ROLLBACK;


-- EXAMPLES:
-- SELECT * FROM employees;

-- START TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- UPDATE employees
-- SET ename = 'John Carpenter'
-- WHERE eid = 8;
-- COMMIT;

-- START TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- UPDATE employees
-- SET ename = 'Phil Murray'
-- WHERE eid = 8;
-- ROLLBACK;


-- DEFERRABLE - 
-- <SQL COMMANDS FOR BACKUPS>
-- COMMIT;