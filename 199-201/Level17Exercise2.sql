-- Do the following using the database wishlists:
    -- Delete anyone who has two lists or less

DELETE FROM people
    WHERE pid IN 
        (SELECT pid
            WHERE 
                (SELECT
                    COUNT(lid)
                    FROM people AS i NATURAL LEFT JOIN lists
                    WHERE people.pid = i.pid
                    GROUP BY pid) <= 2);