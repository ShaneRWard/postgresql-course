-- // Grouping - condenses data into groups as specified, similar to DISTINCT function.
-- SELECT people.pcity, COUNT(*) AS "people per city" FROM people GROUP BY people.pcity;

-- SELECT DISTINCT
--     pcity,
--     (SELECT COUNT(*) FROM people AS p WHERE p.pcity = people.pcity)
--     FROM people;

-- SELECT
--     DISTINCT pcity,
--     (SELECT COUNT(*))
--     FROM people;

-- SELECT
--     pfirstname,
--     plastname,
--     COUNT(*) AS "num of items" FROM people
--     JOIN lists USING(pid)
--     JOIN listitems USING(lid)
--     GROUP BY pfirstname, plastname
--     ORDER BY "num of items" DESC;

-- SELECT 22
--     pfirstname,
--     listitems FROM people
--     JOIN lists USING(pid)
--     JOIN listitems USING(lid)
--     WHERE pfirstname = 'Randy';

-- // Two+ values
-- Anything that is not an Aggregate function must be in the group by argument
-- SELECT pstate, pcity, AVG(ppoints) FROM people GROUP BY pstate, pcity;

-- // Filtering Results
--  WHERE
    -- filters before database groups records
    -- can use any column, even ones not in the group by list

--  Having
    -- filters after database groups records
    -- can use aggregate functions over the group

SELECT 
    pcity, 
    pstate, 
    COUNT(*) as "PEOPLE PER CITY" FROM people
    GROUP BY pcity, pstate
    HAVING COUNT(*) >= 2
    ORDER BY "PEOPLE PER CITY" DESC, pcity ASC;