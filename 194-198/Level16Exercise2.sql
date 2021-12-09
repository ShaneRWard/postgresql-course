-- Do the following using the database wishlists:
    -- update the first and last name of the person with the max amount of ppoints to James Bond

SELECT * FROM people ORDER BY ppoints DESC LIMIT 1;

UPDATE 
    people 
    SET pfirstname = 'James',
        plastname = 'Bond'
    WHERE ppoints = (SELECT MAX(ppoints) FROM people
        LIMIT 1);

SELECT * FROM people ORDER BY ppoints DESC LIMIT 1;