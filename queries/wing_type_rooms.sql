SELECT r.room_id
FROM ROOM_BY_WING r
WHERE r.room_type_id = &<name="type id" type="integer" required="true"> AND r.wingid = &<name="wing id" type="integer" required="true">
