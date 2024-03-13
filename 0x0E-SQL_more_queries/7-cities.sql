-- This query creates the database 'hbtn_0d_usa' on the MySQL server if it doesn't already exist.
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- This query switches to use the database 'hbtn_0d_usa' for subsequent operations.
USE hbtn_0d_usa;

-- This query creates a table named 'cities' within the 'hbtn_0d_usa' database.
-- The table has a column 'id' that auto-increments and is marked as UNIQUE and NOT NULL, 
-- a column 'state_id' that cannot be NULL, referencing the 'id' column of the 'states' table,
-- a column 'name' of type VARCHAR(256) that cannot be NULL, and 'id' is set as the primary key.
CREATE TABLE IF NOT EXISTS cities (
    id INT UNIQUE AUTO_INCREMENT NOT NULL,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(state_id) REFERENCES states(id)
);

