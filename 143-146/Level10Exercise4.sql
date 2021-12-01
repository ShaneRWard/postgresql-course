-- return the first name, last name, dob of all individuals who are more than 10 years old.

SELECT pfirstname, plastname, pdob FROM people
    WHERE (date_part('year', AGE(pdob))) > 10
;