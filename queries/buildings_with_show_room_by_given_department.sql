# כל הבנינים שיש בהם חדרי תצוגה של המחלקה שמספר המזהה שלה נתון
SELECT b.building_id
FROM Buildings b
WHERE EXISTS (SELECT *
              FROM ROOMS r
              WHERE r.department_id = &<name="id" hint="Department ID">
                AND r.room_type_id = 1
                AND r.building_id = b.building_id)
