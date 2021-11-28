-- Get all the first names and favorites from people
-- Access just the favorite desserts from favorites

SELECT pfirstname, pfavorites -> 'Desserts' -> 0 FROM people;