SELECT t.wing_id, t.equipment_name, SUM(t.min_amount - t.amount)
FROM Equipments e JOIN Wing w AS t
WHERE t.min_amount < t.amount
GROUP BY t.wing_id, t.equipment_name