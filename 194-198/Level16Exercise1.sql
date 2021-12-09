-- Do the following using the database wishlists:
    -- returning 10 results at a time for pagination from the people table

SELECT pfirstname FROM people 
    ORDER BY pid 
    LIMIT 10;

SELECT pfirstname FROM people 
    ORDER BY pid 
    OFFSET 10 ROWS 
    FETCH NEXT 10 ROWS ONLY;

SELECT pfirstname FROM people 
    ORDER BY pid 
    OFFSET 20 ROWS 
    FETCH NEXT 10 ROWS ONLY;

SELECT pfirstname FROM people 
    ORDER BY pid 
    OFFSET 30 ROWS 
    FETCH NEXT 10 ROWS ONLY;