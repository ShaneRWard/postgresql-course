-- NOT is an operator that selects the oposite of the given conditions
SELECT pfirstname, plastname, pstate, pcity
    FROM people 
    WHERE pcity 
    IS NOT NULL LIMIT 15
;

SELECT pfirstname, plastname, pstate, pcity 
    FROM people 
    WHERE pstate 
    NOT LIKE 'M_'
;
