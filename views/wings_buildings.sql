create view BUILDING_BY_WING as 
SELECT b.building_id, w.wingid
FROM MKLEMFNE.WING w
INNER JOIN BUILDINGS b on b.wing_id = w.wingid
order by b.wing_id