-- This query lists all Comedy shows in the 'hbtn_0d_tvshows' database.
-- It retrieves the title of each show from the 'tv_shows' table by joining with 'tv_show_genres' and 'tv_genres' tables.
-- The WHERE clause filters rows where the genre name is 'Comedy'.
-- The result is grouped by show title and ordered alphabetically.
SELECT title
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
WHERE tv_genres.name = 'Comedy'
GROUP BY title
ORDER BY title ASC;

