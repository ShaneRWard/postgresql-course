-- Like is a pattern matching command. 
-- % matches any number of characters (before or after)
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity LIKE '%is';

-- _ matches a single character
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate LIKE 'A_';
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pfirstname LIKE '_ara';

-- Both
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity LIKE '%vi_';