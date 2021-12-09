-- Do the following using the database wishlists:
    -- update the last name to include "+HERO" at the end of it for anyone who has more than the average amount of ppoints

UPDATE people 
    SET plastname = CONCAT(plastname, '+HERO')
    WHERE ppoints > 
    (SELECT AVG(ppoints) FROM people)
    RETURNING pfirstname, plastname, ppoints;
