-- show the first and last name and the number of lists each person has

SELECT
    pfirstname AS "First",
    plastname AS "Last",
    COUNT(lid) AS "Lists"
    FROM people
    NATURAL LEFT JOIN lists
    GROUP BY pfirstname, plastname
;

-- show the first and last name and the number of lists each person has; show the results sorted in descending order by the number of lists
 
SELECT
    pfirstname AS "First",
    plastname AS "Last",
    COUNT(Lid) AS "Lists"
    FROM people
    NATURAL LEFT JOIN lists
    GROUP BY pfirstname, plastname
    ORDER BY "Lists" DESC
;