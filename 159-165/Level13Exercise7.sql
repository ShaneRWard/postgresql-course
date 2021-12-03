-- use JOIN to
    -- for the first ten people in the people's table, return the first name and last name of each person, the name(s) of the list(s) they have created, and the items in the list

SELECT 
    pfirstname,
    plastname,
    lname,
    iname
    FROM people
    NATURAL LEFT JOIN lists
    NATURAL LEFT JOIN listitems
    NATURAL LEFT JOIN items
    LIMIT 10
;

-- can you use a subquery to get the same result?

SELECT 
    pfirstname,
    plastname,
    (SELECT lname FROM lists WHERE lists.pid=people.pid),
    (SELECT iname FROM items WHERE items.iid=(SELECT listitems.iid FROM listitems))
    FROM people
    LIMIT 10
;

