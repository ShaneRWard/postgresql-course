--return in one column pfirstname, plastname, and ppoints from people
--call the column "Customer Points"
--CAST the ppoints to TEXT
--order DESC by ppoints
 
SELECT pfirstname || ' ' || plastname || ' : ' || CAST(ppoints AS TEXT) AS "Customer Points" FROM people ORDER BY ppoints DESC;