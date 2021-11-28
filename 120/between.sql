-- between sets a range using AND operator
-- integers
SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints BETWEEN 1000 and 2000;
-- dates
SELECT pfirstname, plastname, pdob FROM people WHERE pdob BETWEEN '1980-01-01 01:01:01' and '2000-01-01 01:01:01';
