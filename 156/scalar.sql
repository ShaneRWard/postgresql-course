-- A query can return 3 types of data
    -- scalar: a single point of data; 1 row from 1 column
    -- row: multiple points of data on a row; 1 row from multiple colummns
    -- table: multiple points of data across multiple rows; multiple rows in multiple columns
 

 SELECT rid, cname FROM rentals
    JOIN customers USING(cid);

-- the following is the same search but using a subquery
SELECT rentals.rid, (SELECT customers.cname FROM customers
    WHERE rentals.cid = customers.cid) AS "name" from rentals;

-- an aggregate function to count then number of rentals each customer has made
SELECT customers.cname, 
    (SELECT COUNT(*) FROM rentals 
        WHERE customers.cid=rentals.cid) AS "# Rentals" 
    FROM customers;