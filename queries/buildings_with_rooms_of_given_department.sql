SELECT b.building_id
FROM Buildings b
WHERE EXISTS (SELECT *
              FROM ROOMS r
              WHERE r.department_id = &<name="id" hint="Department ID">
                AND r.building_id = b.building_id)
