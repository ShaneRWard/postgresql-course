-- Do the following using the database wishlists:
    -- give anyone who has less than the average amount of ppoints another 100 points

UPDATE people 
    SET ppoints = ppoints + 100 
    WHERE ppoints < 
    (SELECT AVG(ppoints) FROM people)
    RETURNING pfirstname, plastname, ppoints;

    -- visually verify your results with a small sample of 10 records
    -- verify your results with returning

SELECT
    pfirstname,
    plastname,
    ppoints
    FROM people
    WHERE ppoints < 
    (SELECT AVG(ppoints) FROM people)
    LIMIT 10;



