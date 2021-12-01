-- use right join to return the first name of all customers, the rental id of any rental transaction they're associated with, and also show the name of the movie they rented if applicable.

SELECT customers.cname, rentals.rid, movies.mname FROM rentals
    NATURAL RIGHT JOIN customers
    NATURAL LEFT JOIN movies
;