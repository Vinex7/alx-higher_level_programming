-- This query creates the database 'hbtn_0d_2', if it doesn't already exist.
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;

-- This query creates a MySQL server user named 'user_0d_2' with the password 'user_0d_2_pwd', if it doesn't already exist.
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';

-- This query grants SELECT privileges on all tables within the 'hbtn_0d_2' database to the MySQL user 'user_0d_2' when connecting from 'localhost'.
GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';

