-- Combine first name and last name into "Full Name", return those results in a column named "Full Name" and order all of this by last name

SELECT pfirstname || ' ' || plastname AS "Full Name" FROM people;