-- This query creates a table named 'unique_id' on the MySQL server.
-- The table has a column 'id' with a default value of 1 and it's marked as UNIQUE, and a column 'name' of type VARCHAR(256).
CREATE TABLE IF NOT EXISTS unique_id (id INT DEFAULT 1 UNIQUE, name VARCHAR(256));

