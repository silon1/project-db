SELECT r.department_id, d.name, count(*) as show_rooms
FROM rooms r
inner join buildings b on r.building_id = b.building_id
inner join MKLEMFNE.DEPARTMENT d on r.department_id = d.departmentid
where r.room_type_id = 1                    
GROUP BY r.department_id,d.name
ORDER BY r.department_id
