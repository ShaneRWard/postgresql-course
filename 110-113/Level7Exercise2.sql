-- return in one column: pfirstname plastname is X years old
-- where X is the number of years from today to their dob
-- CAST as necessary
 
-- Look into using the function
-- EXTRACT
-- AGE
-- call the column "Age"
-- order by "Age" descending

SELECT pfirstname || ' ' || plastname || ' is ' || CAST(date_part('year', AGE(pdob)) AS TEXT) || ' years old' AS "AGE" FROM people ORDER BY pdob DESC;
-- Alternatively:
-- SELECT pfirstname || ' ' || plastname || ' is ' || CAST(EXTRACT(year from AGE(pdob)) AS TEXT) || ' years old' AS "AGE" FROM people ORDER BY pdob DESC;