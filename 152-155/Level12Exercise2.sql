-- use right join to return the name of all movies, the rental id of any rental transaction they're associated with, and also show the first name of the customer who rented the movie if applicable. 
SELECT mname, rid, cname from rentals
    RIGHT JOIN movies USING(mid)
    LEFT JOIN customers USING(cid)
;

-- use left join to return the name of all movies, the rental id of any rental transaction they're associated with, and also show the first name of the customer who rented the movie if applicable.
SELECT mname, rid, cname from movies
    LEFT JOIN rentals USING(mid)
    LEFT JOIN customers USING(cid)
;