SELECT r.department_id, r.room_type_id, count(*)
FROM ROOM_BY_WING r
GROUP BY r.room_type_id, r.department_id
ORDER BY r.department_id, r.room_type_id
