-- This query lists all shows from the 'hbtn_0d_tvshows' database along with all genres linked to each show.
-- It retrieves the title of each show from the 'tv_shows' table and the name of each genre from the 'tv_genres' table
-- by joining with the 'tv_show_genres' table, which links shows to genres.
-- The result is ordered by show title and genre name in ascending order.
SELECT title, name
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
ORDER BY title ASC, name ASC;

