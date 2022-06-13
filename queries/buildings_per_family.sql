SELECT b.building_last_name, COUNT(*)
FROM Buildings b
GROUP BY b.building_last_name
ORDER BY b.building_last_name
