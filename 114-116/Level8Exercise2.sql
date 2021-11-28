-- Use the containment operator to check if cake is in the favorite foods people like
-- Try it both with accessing desserts and without using the accessing operator

-- SELECT pfavorites FROM people LIMIT 10;
Select pfavorites -> 'Desserts' @> CAST('["chocolate cake"]' AS JSONB) FROM people;
Select pfavorites @> CAST('{"Desserts": ["chocolate cake"]}' AS JSONB) FROM people;