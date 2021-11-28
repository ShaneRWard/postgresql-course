-- Return the first name, last name, and dob of everyone born between 2004 and 2006.
-- Return the first name, last name, state and dob of everyone born between 2000 and 2010 who is from CA.

SELECT pfirstname, plastname, pdob 
    FROM people
    WHERE pdob BETWEEN '2004-01-01 00:00:00' AND '2010-12-31 23:59:59'
;

SELECT pfirstname, plastname, pstate, pdob 
    FROM people
    WHERE pdob BETWEEN '2000-01-01 00:00:00' AND '2010-12-31 23:59:59'
    AND pstate = 'CA'
;