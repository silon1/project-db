SELECT r.room_id
FROM ROOM_BY_WING r
WHERE r.room_type_id = &<name="type_id" type="integer" required="true"> ANF r.wing_id = &<name="wing_id" type="integer" required="true">
