-- This query lists all the cities of California that can be found in the database 'hbtn_0d_usa'.
-- It retrieves the 'id' and 'name' columns of the cities table where the 'state_id' matches the 'id' of California state.
-- The result is ordered by the city IDs in ascending order.
SELECT id, name FROM cities WHERE state_id = (SELECT id FROM states WHERE name = 'California') ORDER BY id ASC;

