-- This query lists all shows contained in the 'hbtn_0d_tvshows' database.
-- It retrieves the title of each TV show along with the corresponding genre ID, if available, from the 'tv_show_genres' table using a LEFT JOIN.
-- The result is ordered by the title of the TV show and the genre ID in ascending order.
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows LEFT JOIN tv_show_genres
ON tv_shows.id = tv_show_genres.show_id
ORDER BY tv_shows.title ASC, tv_show_genres.genre_id ASC;

