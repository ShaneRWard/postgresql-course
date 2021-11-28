--  "->" returns the JSON given
SELECT CAST('{"name": "Postgres", "version": "14.1"}' AS JSONB) -> 'version';
-- "->>" makes result a string
SELECT CAST('{"name": "Postgres", "version": "14.1", "versionInfo": {"major": 14.1, "minor": 1, "patch": 0}}' AS JSONB);
SELECT CAST('{"name": "Postgres", "version": "14.1", "versionInfo": {"major": 14.1, "minor": 1, "patch": 0}}' AS JSONB) -> 'versionInfo' -> 'major';

SELECT CAST('{"name": "Postgres", "version": "14.1", "versionInfo": {"major": 14.1, "minor": 1, "patch": 0}}' AS JSONB) -> 'versionInfo' ->> 'major';

SELECT CAST(CAST('{"name": "Postgres", "version": "14.1", "versionInfo": {"major": 14.1, "minor": 1, "patch": 0}}' AS JSONB) -> 'versionInfo' -> 'major' AS INT);