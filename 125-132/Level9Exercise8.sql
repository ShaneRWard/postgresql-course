-- Return the first name, last name, and favorites of everyone whose first favorite dessert has the letter a in it, case-insensitive.
--  Tips
--      The first item in a json array can be accessed with 0 after the access operator
--      You will probably need to use the ->> operator

SELECT pfirstname, plastname, pfavorites -> 'Desserts' -> 0
    FROM people
    WHERE pfavorites -> 'Desserts' ->> 0 LIKE '%a%'
;