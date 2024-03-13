-- This query creates a MySQL server user named 'user_0d_1' with the password 'user_0d_1_pwd', if it doesn't already exist.
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';

-- This query grants all privileges to the MySQL user 'user_0d_1' when connecting from 'localhost'.
GRANT ALL PRIVILEGES ON * . * TO 'user_0d_1'@'localhost';

