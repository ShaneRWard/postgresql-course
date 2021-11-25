-- in three columns, return pid from people.
-- in column "one" have pid be INT
-- in column "two" have pid be NUMERIC
-- in column "three" have pid be TEXT

SELECT CAST(pid AS INT) AS "one", CAST(pid AS NUMERIC) AS "two", CAST(pid AS TEXT) AS "three" FROM people;