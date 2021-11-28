-- Return the first name, last name, and points of everyone in people who has 5000 or more points.

SELECT pfirstname, plastname, ppoints 
    FROM people 
    WHERE ppoints >= 5000
;
