select r.room_id
from rooms r inner join buildings b on r.building_id = b.building_id
where r.room_type_id = &<name="type_id" type="integer" required="true">
