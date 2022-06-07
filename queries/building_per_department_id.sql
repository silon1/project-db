# כל הבנינים שיש בהם חדר תצוגה השייך למחלקה שמספר המזהה שלה נתון
SELECT b.building_id
FROM Buildings b
WHERE exists (SELECT *
             FROM ROOMS r
             WHERE r.department_id = &dep_num
               and r.room_type_id = 1
               and r.building_id = b.building_id)
