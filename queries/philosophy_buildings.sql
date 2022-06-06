# כל הבנינים שיש בהם חדר מנהלה וחדר השייך למחלקת פילוסופייה 1970
SELECT b.building_id
FROM Building b
WHERE ESIXT(SELECT *
	FROM Room r
	WHERE r.department_id = 20
		and r.room_type_id = 5
		and r.building_id = b.building_id)