-- Do the following using the database movies:
  -- show the customer's name and the total number of movies they've rented

SELECT
    cname AS "Customer",
    COUNT(rid) AS "num of rentals" FROM customers
    LEFT JOIN rentals USING(cid)
    GROUP BY cname;