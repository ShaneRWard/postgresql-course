-- IN sets any number of conditions where if any of them are met, they will be listed
-- Equivalent to multiple OR operators
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate IN ('CA', 'WA', 'OR');
