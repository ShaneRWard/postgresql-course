-- Do the following using the database wishlists:
    -- Delete anyone who has four items or less in their wishlists rebuild your wishlists database
    -- do something to celebrate coming to the end of this course!

DELETE FROM people
    WHERE pid IN (SELECT 
        pid
        WHERE (SELECT
            COUNT(liid)
            FROM people AS i 
            NATURAL LEFT JOIN lists
            NATURAL LEFT JOIN listitems
            WHERE people.pid = i.pid
            GROUP BY pid) <= 4)
            RETURNING *;

CREATE TABLE finished_courses (
    fcID SERIAL PRIMARY KEY,
    pID INT REFERENCES people NOT NULL,
    fcName VARCHAR(50) NOT NULL
);

INSERT INTO people (pfirstname, plastname, pstate, pcity, pdob, pjoined, plastvisit, ppoints, pfavorites) VALUES
('Shane', 'Ward', 'CA', 'Clovis', '1982-04-02 14:40:10', '2019-02-18 14:40:10', '2021-11-23 14:40:10', 1000040, '{"Desserts":["icecream"], "Destinations":["Paris"]}');

INSERT INTO finished_courses (pID, fcName) VALUES
((SELECT MAX(pid) FROM people), 'CIT28');