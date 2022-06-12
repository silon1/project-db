SELECT b.building_id 
FROM Buildings b
WHERE EXISTS (SELECT *
              FROM Rooms r
              WHERE r.room_type_id = 2)
             
INTERSECT

SELECT b.building_id 
FROM Buildings b
WHERE b.building_id IN ( 
        SELECT x.building_id
        FROM (SELECT r.building_id, COUNT(r.room_id) c
              FROM Rooms r
              WHERE r.room_type_id = 1
              GROUP BY r.building_id ) x
        WHERE x.c > 7)

INTERSECT

SELECT b.building_id
FROM buildings b
WHERE b.building_id NOT IN (SELECT t.building_id
                            FROM TO_ORDER t)