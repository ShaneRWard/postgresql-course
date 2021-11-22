-- select state and city in one column called "TOWNS", have the phrase "HAS THE CITY" between the state and city, and order by 
-- state ascending
-- city descending

SELECT pstate || ' HAS THE CITY ' || pcity AS "TOWNS" FROM people ORDER BY pstate ASC, pcity DESC;