# מספר הבניינים שתרמה כל משפחה
SELECT b.building_last_name, COUNT(*)
FROM Building b
GROUP BY b.building_last_name