-- Return the first name, last name, state, and points of everyone in people who has 9500 or more points OR is from New York state.

SELECT pfirstname, plastname, pstate, ppoints
    FROM people
    WHERE ppoints >= 9500
    OR pstate = 'NY'
;