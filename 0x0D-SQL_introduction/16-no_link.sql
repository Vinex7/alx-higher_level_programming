-- This query lists all records of the table 'second_table' that have a non-empty name value in the MySQL server.
-- Records are ordered by score in descending order.
SELECT `score`, `name`
FROM `second_table`
WHERE `name` != ""
ORDER BY `score` DESC;

