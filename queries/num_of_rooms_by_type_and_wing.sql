SELECT b.wing_id as wing, rt.name as room_type,  count(*)
FROM rooms r 
inner join buildings b on r.building_id = b.building_id
inner join room_types rt on rt.room_type_id = r.room_type_id
WHERE r.room_type_id = &<name="type id" type="integer" required="true"> AND b.wing_id = &<name="wing id" type="integer" required="true">
group by rt.name, b.wing_id
