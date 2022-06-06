#כל הבניינים שיש להם לפחות 7 חדרי תצוגה וחדר מנהלה אחד 
#וכן אלה שיש להם את כל הציוד 
 
select b.building_id 
from Buildings b
where EXISTS (SELECT *
             From rooms r
             where r.room_type_id = 5)
             
INTERSECT

select b.building_id 
from Buildings b
where b.building_id in ( 
        select x.building_id
        from ( select r.building_id, count(r.room_id) c
               from rooms r
               where r.room_type_id = 1
               group by r.building_id ) x
        where x.c > 7)

INTERSECT

Select b.building_id
from buildings b
where b.building_id not in (SELECT e.building_id 
                          from Equipments e
                          WHERE e.amount < e.min_amount)