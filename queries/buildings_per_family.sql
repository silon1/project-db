SELECT b.building_last_name, COUNT(*)
FROM Building b
GROUP BY b.building_last_name
ORDER BY b.building_last_name