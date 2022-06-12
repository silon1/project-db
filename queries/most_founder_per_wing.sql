SELECT b.wing_id, b.building_last_name, COUNT(*) c
FROM Buildings b
GROUP BY b.wing_id, b.building_last_name
HAVING COUNT(b.building_last_name) = (SELECT MAX(COUNT(building_last_name))
                                      FROM buildings
                                      WHERE wing_id = b.wing_id
                                      GROUP BY building_last_name)
ORDER BY b.wing_id, c DESC
