-- return the first name, last name, state, and date of birth of all individuals who have a lowercase 'e' in their first name OR last name AND are from California AND were born after 12/31/1999 (December 31, 1999).

SELECT pfirstname, plastname, pstate, pdob FROM people 
    WHERE (pfirstname LIKE '%e%' OR plastname LIKE '%e%')
    AND pstate = 'CA'
    AND pdob > '12/31/1999';