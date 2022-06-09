# same founder family
SELECT *
FROM Building b1 INNER JOIN Building b2
    ON b1.building_last_name = b2.building_last_name
    AND b1.building_first_name != b2.building_first_name