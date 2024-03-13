-- This query utilizes the 'hbtn_0d_tvshows' database to list all genres of the show 'Dexter'.
-- It retrieves the name of each genre from the 'tv_genres' table by joining with 'tv_show_genres' and 'tv_shows' tables.
-- The WHERE clause filters rows where the title of the show is 'Dexter'.
-- The result is grouped by genre name and ordered alphabetically.
SELECT name
FROM tv_genres
LEFT JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
LEFT JOIN tv_shows ON tv_show_genres.show_id = tv_shows.id
WHERE tv_shows.title = 'Dexter'
GROUP BY name
ORDER BY name ASC;

