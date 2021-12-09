-- Do the following using the database wishlists:
    -- for anyone who has more than two lists, give them 1000 points and verify your changes with returning

SELECT pid, lid FROM lists
            NATURAL JOIN people
            WHERE people.pid = lists.pid;

SELECT
    COUNT(lid) AS "Lists"
    FROM people
    NATURAL LEFT JOIN lists
    WHERE people.pid = lists.pid
    GROUP BY pid
;

UPDATE people 
    SET ppoints = ppoints + 1000 
    WHERE pid in (SELECT pid
        WHERE (SELECT COUNT(lid) 
            FROM people AS i 
            NATURAL JOIN lists
            WHERE people.pid = i.pid) > 1)
    RETURNING pid, pfirstname, ppoints;