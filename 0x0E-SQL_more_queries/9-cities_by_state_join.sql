-- This query lists all cities contained in the database 'hbtn_0d_usa'.
-- It retrieves the ID and name of each city, along with the corresponding state name, using a LEFT JOIN with the states table.
-- The result is ordered by the city IDs in ascending order.
SELECT cities.id, cities.name, states.name FROM cities LEFT JOIN states ON states.id = cities.state_id ORDER BY cities.id;

