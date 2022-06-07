SELECT b.wing_id, b.building_last_name, COUNT(*) c
FROM Buildings b
GROUP BY b.wing_id, b.building_last_name
ORDER BY b.wing_id, c DESC