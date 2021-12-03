-- // Aggregate Functions

-- ● count - As it implies, it counts rows in a table or subsets of data and will return an integer for one or more groups being counted.
-- SELECT COUNT(*) FROM customers;
-- SELECT COUNT(*) FROM rentals;
-- SELECT COUNT(*) FROM movies;

-- SELECT COUNT(*) FROM people;
-- SELECT COUNT(DISTINCT pcity) FROM people;
-- SELECT DISTINCT pcity FROM people ORDER BY pcity;
-- SELECT COUNT(pid) FROM people;
-- SELECT COUNT(*) AS "OR Pop" FROM people WHERE pstate = 'OR';

-- ● sum - Returns the sum of a given column or set of data
-- SELECT SUM(ppoints) FROM people;

-- ● avg - 
-- SELECT AVG(ppoints) FROM people;

-- ● max
-- SELECT MAX(ppoints) FROM people;
-- SELECT MAX(pdob) FROM people;

-- ● min
-- SELECT MIN(ppoints) FROM people;
-- SELECT MIN(pdob) FROM people;


-- // Subquery value
-- SELECT customers.cname, 
--     (SELECT COUNT(*) FROM rentals 
--         WHERE rentals.cid = customers.cid)
--         AS "Amt"
--     FROM customers
    -- ORDER BY "Amt" DESC;

-- SELECT pfirstname, plastname,
--     (SELECT COUNT(*) FROM lists WHERE people.pid = lists.pid) 
--     AS AMT FROM people 
--     ORDER BY AMT DESC;


-- // Subquery filtering
SELECT pfirstname, plastname, ppoints FROM people 
    WHERE ppoints = (SELECT MAX(ppoints) FROM people);

SELECT COUNT(*) FROM people 
    WHERE ppoints > (SELECT AVG(ppoints) FROM people);