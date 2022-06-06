# כל הביינים שיש בהם תצוגה ואין מנהלה
SELECT b1.building_id
FROM Buildings b1
WHERE EXISTS( SELECT *
            FROM Rooms r
            WHERE r.room_type_id = 1
            and r.building_id = b1.building_id)
INTERSECT
SELECT b2.building_id
FROM Buildings b2
WHERE NOT EXISTS( SELECT *
                FROM Rooms r
                WHERE r.room_type_id = 5
                and r.building_id = b2.building_id)
