-- This query displays the maximum temperature recorded for each state, ordered alphabetically by state name.
SELECT `state`, MAX(`value`) AS `max_temp`
FROM `temperatures`
GROUP BY `state`
ORDER BY `state`;

