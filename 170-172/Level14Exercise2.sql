-- return the first name, last name, and the number of lists each person has

SELECT 
    pfirstname, 
    plastname, 
    (SELECT COUNT(*) FROM lists 
        where lists.pid=people.pid)
    FROM people;

-- return the first name, last name, and the number of lists each person has ORDER this by the amount of lists in descending order
 
SELECT 
    pfirstname, 
    plastname, 
    (SELECT COUNT(pid) FROM lists 
        where lists.pid=people.pid)
    AS "List#" FROM people
    ORDER BY "List#" DESC;