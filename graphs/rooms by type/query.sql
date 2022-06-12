select r.room_type_id, count(*)
from aheller.rooms r
group by r.room_type_id
order by r.room_type_id
