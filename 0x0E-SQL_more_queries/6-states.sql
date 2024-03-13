-- This query creates the database 'hbtn_0d_usa' on the MySQL server if it doesn't already exist.
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- This query switches to use the database 'hbtn_0d_usa' for subsequent operations.
USE hbtn_0d_usa;

-- This query creates a table named 'states' within the 'hbtn_0d_usa' database.
-- The table has a column 'id' that auto-increments and is marked as UNIQUE and NOT NULL, 
-- and a column 'name' of type VARCHAR(256) that cannot be NULL.
-- The 'id' column is set as the primary key.
CREATE TABLE IF NOT EXISTS states (id INT UNIQUE NOT NULL AUTO_INCREMENT, name VARCHAR(256) NOT NULL, PRIMARY KEY(id));

