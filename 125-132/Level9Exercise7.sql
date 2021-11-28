-- Return the first name, last name, and city of everyone who has a lowercase "b" in their city name.

SELECT pfirstname, plastname, pstate, pcity 
    FROM people 
    WHERE pcity LIKE '%b%'
;