create view ROOM_BY_WING as 
SELECT r.room_id, w.wingid
FROM MKLEMFNE.WING w
INNER JOIN BUILDINGS b on b.wing_id = w.wingid
INNER JOIN ROOMS r on r.building_id = b.building_id
order by r.room_id;
