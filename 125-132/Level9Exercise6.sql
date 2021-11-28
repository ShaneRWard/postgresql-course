-- Use the "IN" operator to return the first name, last name, and state of everyone from WY, KY, or GA
-- Use the "IN" operator to return the first name, last name, and state of everyone who is NOT from WY, KY, or GA

SELECT pfirstname, plastname, pstate 
    FROM people
    WHERE pstate IN ('WY', 'KY', 'GA')
;

SELECT pfirstname, plastname, pstate 
    FROM people
    WHERE pstate NOT IN ('WY', 'KY', 'GA')
;