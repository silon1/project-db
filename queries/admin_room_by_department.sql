SELECT r.department_id, r.room_id
FROM ROOM_BY_WING r
WHERE r.room_type_id = 5
ORDER BY r.department_id
