-- return the first name, last name, and the number of listitems each person has
 
SELECT 
    pfirstname, 
    plastname, 
    (SELECT COUNT(*) FROM listitems 
        where listitems.lid = lists.lid)
    FROM people JOIN lists USING (pid);

-- filter the above to only show records with 2 or more listitems

SELECT 
    pfirstname, 
    plastname, 
    (SELECT COUNT(*) FROM listitems 
        where (listitems.lid = lists.lid))
    FROM people JOIN lists USING (pid)
    WHERE (SELECT COUNT(*) FROM listitems 
        where listitems.lid = lists.lid) > 1;