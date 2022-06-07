# כל מה שצריך להזמין
SELECT e.equipment_name e.min_amount - e.amount
FROM Equipment e
WHERE e.amount < e.min_amount
