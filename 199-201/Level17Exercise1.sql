-- Do the following using the database wishlists:
    -- delete any people who are within 1000 points of the min amount of points

ALTER TABLE lists
    DROP CONSTRAINT "lists_pid_fkey",
    ADD FOREIGN KEY(pid) REFERENCES people ON DELETE CASCADE;

ALTER TABLE listitems
    DROP CONSTRAINT "listitems_lid_fkey",
    ADD FOREIGN KEY(lid) REFERENCES lists ON DELETE CASCADE;

DELETE FROM people
    WHERE ppoints < ((SELECT MIN(ppoints) FROM people) + 1000)
    RETURNING *;