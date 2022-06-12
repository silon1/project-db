SELECT r.room_type_id, count(*)
FROM Rooms r
GROUP BY r.room_type_id
ORDER BY r.room_type_id
