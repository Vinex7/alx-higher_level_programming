-- This query creates the table 'force_name' on your MySQL server if it doesn't already exist.
-- It defines a table with two columns: 'id' as integer and 'name' as a string of maximum length 256, which cannot be NULL.
CREATE TABLE IF NOT EXISTS force_name (id INT, name VARCHAR(256) NOT NULL);

