-- JSON NULL and SQL NULL are different.
-- SQL NULL
SELECT NULL;
-- JSON NULL
SELECT CAST('null' AS JSONB);
SELECT CAST('null' AS JSONB), NULL;
-- Putting not null only blocks the SQL null
SELECT CAST('null' AS JSONB), NOT NULL;

-- There are no constraints in JSON, you have to handle it yourself