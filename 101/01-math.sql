-- https://www.postgresql.org/docs/10/functions-math.html

SELECT 40 + 5 AS "A";  -- integer
SELECT 40.3 + 5 AS "B";  -- numeric for decimal
SELECT 40.3 - 5;
SELECT 40.3 * 5;
SELECT 40.3 / 5;
SELECT 3 ^5;
SELECT 9%2;
SELECT 999/50;
SELECT 999/50 AS "result", 999%50 AS "REMAINDER";
-- round
SELECT ROUND(42.3, 2);
SELECT ROUND(42.3, 0);
SELECT ROUND(42.3);
SELECT ROUND(42.9);
SELECT ROUND(42.9, 4);
-- absolute VALUE
SELECT @ -42.3;