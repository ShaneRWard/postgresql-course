-- show the first, last name, and the number of list items each person has; show the results sorted in descending order by the number of list items

SELECT
    pfirstname AS "First",
    plastname AS "Last",
    COUNT(liid) AS "List Items"
    FROM people
    NATURAL LEFT JOIN lists
    NATURAL LEFT JOIN listitems
    GROUP BY pfirstname, plastname
    ORDER BY "List Items" DESC
;

-- show the first, last name, the number of lists, and the number of list items each person has; show the results sorted in descending order by the number of list items
 
SELECT
    pfirstname AS "First",
    plastname AS "Last",
    COUNT(lid) AS "Lists",
    COUNT(liid) AS "List Items"
    FROM people
    NATURAL LEFT JOIN lists
    NATURAL LEFT JOIN listitems
    GROUP BY pid, pfirstname, plastname
    ORDER BY "List Items" DESC, "Lists" DESC
;