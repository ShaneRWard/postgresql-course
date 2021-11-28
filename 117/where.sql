-- Where sets a condition on a table to limit results

-- SELECT * FROM people;

-- SELECT pfirstname, pstate FROM people where pstate = 'NY';
-- SELECT pfirstname, pstate FROM people where pcity = 'Austin';

-- group by sorts the data by the criteria that follows it. 

SELECT pstate, COUNT(pstate) FROM people GROUP BY pstate;