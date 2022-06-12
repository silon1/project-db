SELECT b.building_id
FROM Building b
WHERE b.building_id NOT IN (SELECT t.building_id
                            FROM TO_ORDER t)