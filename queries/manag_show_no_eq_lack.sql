# כל הבניינים שיש להם יותר 7 חדרי תצוגה
# חדר מנהלה אחד ולא חסק בהם ציוד
 
SELECT b.building_id 
FROM Buildings b
WHERE EXISTS (SELECT *
              FROM rooms r
              WHERE r.room_type_id = 5)
             
INTERSECT

SELECT b.building_id 
FROM Buildings b
WHERE b.building_id IN ( 
        SELECT x.building_id
        FROM (SELECT r.building_id, COUNT(r.room_id) c
              FROM rooms r
              WHERE r.room_type_id = 1
              GROUP BY r.building_id ) x
        WHERE x.c > 7)

INTERSECT

SELECT b.building_id
FROM buildings b
WHERE b.building_id NOT IN (SELECT e.building_id 
                            FROM Equipments e
                            WHERE e.amount < e.min_amount)