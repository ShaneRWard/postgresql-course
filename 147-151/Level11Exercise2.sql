-- return the first name of the customer, the movie title, and the rental transaction id of the first ten rental transactions

SELECT customers.cname, movies.mname, rentals.rid FROM customers
    NATURAL JOIN rentals 
    NATURAL JOIN movies 
    LIMIT 10;
