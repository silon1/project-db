SELECT b.wing_id, b.building_last_name, COUNT(*)
FROM Building b
GROUP BY b.wing_id
GROUP BY b.building_last_name