-- This query lists all records from the table 'second_table' with a score greater than or equal to 10 in the MySQL server.
-- Records are ordered by score in descending order.
SELECT `score`, `name`
FROM `second_table`
WHERE `score` >= 10
ORDER BY `score` DESC;

