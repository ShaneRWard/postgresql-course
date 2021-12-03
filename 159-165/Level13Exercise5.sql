-- use LEFT JOIN to
    -- return the first name of all customers, the rental id of any rental transaction they're associated with, and also show the name of the movie they rented if applicable. 

-- SELECT 
--     cname,
--     rid,
--     mname
--     FROM customers
--     LEFT JOIN rentals USING(cid)
--     JOIN movies USING(mid);

-- can you use a subquery to get the same result?

SELECT 
    customers.cname AS "customer name", 
    (SELECT rid FROM rentals WHERE rentals.cid=customers.cid),
    (SELECT mname FROM movies)
    FROM customers ;

-- No, it appears from several attempts that it results in an error.
-- Perhaps a solution will arise in the chapters that follow.