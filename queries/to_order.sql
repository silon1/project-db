/*
-- before index
SELECT e.equipment_name, e.building_id, e.amount, e.min_amount, e.min_amount - e.amount as to_order
FROM Equipments e
WHERE e.amount < e.min_amount*/

SELECT *
FROM TO_ORDER
