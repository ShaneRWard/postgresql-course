-- use JOIN to
    -- return the first name, the movie title, and the rental transaction id of the first ten rental transactions

SELECT
    cname AS "customer name",
    mname AS "movie name",
    rid from customers
    JOIN rentals USING(cid)
    JOIN movies USING(mid)
    LIMIT 10;

-- can you use a subquery to get the same result?

SELECT 
    (SELECT cname FROM customers WHERE customers.cid = rentals.cid) AS "customer name", 
    (SELECT mname FROM movies WHERE movies.mid = rentals.mid) AS "movie name", 
    rid from rentals
    LIMIT 10;