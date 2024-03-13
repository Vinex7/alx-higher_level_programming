-- This query lists all shows from the 'hbtn_0d_tvshows_rate' table, displaying them by their total rating.
-- It retrieves the title of each show from the 'tv_shows' table and calculates the sum of their ratings from the 'tv_show_ratings' table.
-- The result is grouped by show title and ordered by the total rating in descending order.
SELECT title, SUM(tv_show_ratings.rate) AS 'rating'
FROM tv_shows
LEFT JOIN tv_show_ratings ON tv_show_ratings.show_id = tv_shows.id
GROUP BY title
ORDER BY rating DESC;

