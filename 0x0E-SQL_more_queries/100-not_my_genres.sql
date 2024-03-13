-- This query utilizes the 'hbtn_0d_tvshows' database to list all genres not linked to the show 'Dexter'.
-- It retrieves the names of genres from the 'tv_genres' table where the genre is not linked to the show 'Dexter'.
-- The result is obtained by filtering out genres linked to the show 'Dexter' using a subquery and grouping the result by genre name.
SELECT name
FROM tv_genres
WHERE name NOT IN
(SELECT name
FROM tv_genres
LEFT JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
LEFT JOIN tv_shows ON tv_show_genres.show_id = tv_shows.id
WHERE tv_shows.title = 'Dexter')
GROUP BY name
ORDER BY name ASC;

