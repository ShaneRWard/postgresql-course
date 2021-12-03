-- Do the folowing using the database wishlists:
    -- return the first name, last name, and points of people who have more than the average points of all customers

SELECT 
    pfirstname, 
    plastname, 
    ppoints 
    FROM people
    WHERE ppoints > (SELECT AVG(ppoints) FROM people);

    -- return a count of the people who have more than the average points of all customers

SELECT 
    COUNT(*) FROM people 
    WHERE ppoints > (SELECT AVG(ppoints) FROM people);