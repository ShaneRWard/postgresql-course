-- // LIMIT - reduces the number of results
-- SELECT * FROM people LIMIT 10;

-- // FETCH - 
-- SELECT * FROM people FETCH FIRST 10 ROWS ONLY;

-- // OFFSET - Allows you to skip 
SELECT * FROM people ORDER BY pid OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;