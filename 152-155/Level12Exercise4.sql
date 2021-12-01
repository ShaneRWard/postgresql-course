-- for the first ten people in the people's table, return the first name and last name of each person

SELECT pfirstname, plastname from people
    LIMIT 10
;

-- for the first ten people in the people's table, return the first name and last name of each person along with the name(s) of the list(s) they have created

SELECT pfirstname, plastname, lname from people
    JOIN lists ON (people.pid = lists.pid)
    LIMIT 10
;

-- for the first ten people in the people's table, return the first name and last name of each person, the name(s) of the list(s) they have created, and the items in the list

SELECT pfirstname, plastname, lname, iname from people
    LEFT JOIN lists ON (people.pid = lists.pid)
    LEFT JOIN listitems USING(lid)
    NATURAL LEFT JOIN items
    LIMIT 10
;