-- AND sets 2 conditions that must both be met
SELECT pcity, plastname, pstate, pcity FROM people WHERE pstate = 'CA' AND pcity = 'San Diego';

-- OR sets 2 conditions where at least one are met
SELECT pcity, plastname, pstate, pcity FROM people WHERE pstate = 'CA' OR pcity = 'San Diego';

-- Both use in same query
SELECT pcity, plastname, pstate, pcity FROM people WHERE pstate = 'CA' AND pcity = 'San Diego' OR pcity = 'Las Vegas';