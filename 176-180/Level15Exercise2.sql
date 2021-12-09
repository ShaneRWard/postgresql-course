-- show the customer's name and the total number of movies they've rented sorted by the number of movies rented in descending order

SELECT
    cname AS "Customer",
    COUNT(rid) AS "num of rentals" FROM customers
    LEFT JOIN rentals USING(cid)
    GROUP BY cname
    ORDER BY "num of rentals" DESC;


-- show the customer's name and the total number of movies they've rented sorted by the number of movies rented in descending order only for customers who have an 'e' in their name
 
 SELECT
    cname AS "Customer",
    COUNT(rid) AS "num of rentals" FROM customers
    LEFT JOIN rentals USING(cid)
    GROUP BY cname
    HAVING cname LIKE '%e%'
    ORDER BY "num of rentals" DESC;