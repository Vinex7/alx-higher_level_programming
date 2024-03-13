-- This query lists all shows contained in the 'hbtn_0d_tvshows' database that do not have a genre linked.
-- It retrieves the title of each TV show along with the corresponding genre ID, if available, from the 'tv_show_genres' table using a LEFT JOIN.
-- The WHERE clause filters out rows where genre_id is NULL, indicating no genre linked.
-- The result is ordered by the title of the TV show and the genre ID in ascending order.
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows LEFT JOIN tv_show_genres
ON tv_shows.id = tv_show_genres.show_id
WHERE tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title ASC, tv_show_genres.genre_id ASC;

