-- NULL is a condition where the selected data is null. The NOT operator allows the opposite since nothing is null
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate IS NOT NULL;
