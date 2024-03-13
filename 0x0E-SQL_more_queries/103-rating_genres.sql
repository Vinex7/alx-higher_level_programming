-- This query lists all genres in the 'hbtn_0d_tvshows_rate' database, displaying them by their total rating.
-- It retrieves the name of each genre from the 'tv_genres' table and calculates the sum of ratings for shows belonging to each genre 
-- from the 'tv_show_ratings' table, linked through the 'tv_show_genres' table.
-- The result is grouped by genre name and ordered by the total rating in descending order.
SELECT name, SUM(tv_show_ratings.rate) AS 'rating'
FROM tv_genres
INNER JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
INNER JOIN tv_show_ratings ON tv_show_genres.show_id = tv_show_ratings.show_id
GROUP BY name
ORDER BY rating DESC;

