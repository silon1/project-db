create view BUILDING_BY_WING as 
SELECT r.room_id, w.wingid
FROM MKLEMFNE.WING w
INNER JOIN BUILDINGS b on b.wing_id = w.wingid
order by r.room_id;