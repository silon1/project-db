create view Room_by_founder_family as 
SELECT b.building_last_name, r.room_id, b.wing_id,r.department_id
FROM Buildings b inner join Rooms r
on b.building_id = r.building_id 
order by b.building_last_name
