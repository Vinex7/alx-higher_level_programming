-- This query lists all shows without the genre 'Comedy' in the 'hbtn_0d_tvshows' database.
-- It retrieves the titles of shows from the 'tv_shows' table where the show does not have the genre 'Comedy' linked.
-- The result is obtained by filtering out shows with the genre 'Comedy' using a subquery and grouping the result by show title.
SELECT title
FROM tv_shows
WHERE title NOT IN
(SELECT title
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
WHERE tv_genres.name = 'Comedy')
GROUP BY title
ORDER BY title ASC;

