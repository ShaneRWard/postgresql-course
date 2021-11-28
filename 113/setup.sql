-- SELECT * FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites -> 'Destinations' FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites -> 'Destinations' AS "DESTINATIONS" FROM people LIMIT 10;

-- SELECT pfirstname, pfavorites ->> 'Destinations' AS "DESTINATIONS" FROM people LIMIT 10;
-- 0 Selects the first item in each array which only contains one item. This eliminates the brackets
-- SELECT pfirstname, CAST(pfavorites -> 'Destinations' -> 0 AS TEXT) AS "DESTINATIONS" FROM people LIMIT 10;

SELECT pfirstname, pfavorites -> 'Destinations' @> CAST('["Hawaii"]' AS JSONB) AS "Hawaii Travellers" FROM people LIMIT 10;

SELECT pfirstname, pfavorites -> 'Destinations' ? 'Hawaii' AS "Hawaii Travellers" FROM people LIMIT 10;