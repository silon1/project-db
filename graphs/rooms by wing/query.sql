select b.wing_id, count(*)
from aheller.rooms r inner join aheller.buildings b on r.building_id = b.building_id
group by b.wing_id
order by b.wing_id
