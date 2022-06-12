# כל מה שצריך להזמין
SELECT e.equipment_name, e.building_id, e.min_amount - e.amount
FROM Equipments e
WHERE e.amount < e.min_amount
