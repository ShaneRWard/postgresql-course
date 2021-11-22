-- Do the following bonus exercise - you will need to look things up in the documentation to complete this exercise:
-- also from the listitems table, calculate the percentage of the desired items purchased:
--     1 - (lidesired - lipurchased)/lidesired
--     round the result to two decimal places
--     return this result as "Fulfillment"
--     hint, you will need to use 
--          casting 
--              https://www.postgresql.org/docs/12/sql-expressions.html#SQL-SYNTAX-TYPE-CASTS (Links to an external site.)
--              CAST numeric
--          round
--               https://www.postgresql.org/docs/12/functions-math.html

SELECT ROUND((1 -(CAST(lidesired - lipurchased AS NUMERIC)/CAST(lidesired AS NUMERIC)))*100, 2) ||
 '%' AS "Fulfillment" FROM listitems;