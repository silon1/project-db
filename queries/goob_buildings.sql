/*
-- before index
SELECT b.building_id, b.building_first_name||' '||b.building_last_name as name
FROM buildings b
WHERE b.building_id NOT IN (SELECT e.building_id
                            FROM Equipments e
                            WHERE e.amount < e.min_amount)
*/


SELECT b.building_id, b.building_first_name||' '||b.building_last_name as name
FROM buildings b
WHERE b.building_id NOT IN (SELECT t.building_id
                            FROM TO_ORDER t)
