-- All data in sql has a type, ie: INT, VARCHAR, etc...
-- What type a value is determines what you can do with it such as adding two integers
-- https://www.postgresql.org/docs/9.5/datatype.html
-- Casting changes the data type so that it may be worked with in different ways

SELECT CAST(ppoints AS TEXT) FROM people;
