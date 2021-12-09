-- Assuming constrainsts are dropped from previous section, thiw will run

SELECT * FROM customers;
SELECT * FROM rentals;
SELECT * FROM movies;

-- Deletes all cusotmers who watched Cats and shows which ones were deleted
DELETE FROM customers
    USING rentals, movies
    WHERE customers.cid = rentals.cid
        AND rentals.mid = movies.mid
        AND movies.mname = 'Cats'
RETURNING *;

SELECT * FROM customers;
SELECT * FROM rentals;
SELECT * FROM movies;