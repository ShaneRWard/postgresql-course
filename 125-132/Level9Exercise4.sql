-- Use the "NOT" operator to return the first name, last name, state, and points of everyone in people who has 7000 or more points AND is NOT from New York state.
-- Use the "<>" operator to return the first name, last name, state, and points of everyone in people who has 7000 or more points AND is NOT from New York state.
 
 SELECT pfirstname, plastname, pstate, ppoints 
    FROM people 
    WHERE ppoints >= 7000 
        AND NOT pstate = 'NY';

 SELECT pfirstname, plastname, pstate, ppoints 
    FROM people 
    WHERE ppoints >= 7000 
        AND pstate <> 'NY';