create view Room_by_founder_family AS 
SELECT b.building_last_name, r.room_id, b.wing_id,r.department_id
FROM Buildings b INNER JOIN Rooms r ON b.building_id = r.building_id 
ORDER BY b.building_last_name
