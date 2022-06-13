create or replace function add_equipment(eq_name in EQUIPMENTS.EQUIPMENT_NAME%TYPE, eq_amount in integer,eq_min_amount in integer, eq_build_id in integer)
 return boolean is
  success boolean default true;
  ex_building_id_not_found Exception;
  ex_amount_less_then_zero Exception;
  bid integer;
BEGIN 
    IF eq_amount <= 0 OR eq_min_amount <= 0 THEN
       raise ex_amount_less_then_zero;          
    end if;       
    -- if not found any building match to the building id given as paramter an exception (NO_DATA_FOUND) will be raised 
    select b.building_id into bid from buildings b where b.building_id = eq_build_id;
    
    INSERT INTO EQUIPMENTS 
    VALUES (eq_name, eq_amount,eq_min_amount,eq_build_id);
    commit;
    return (success);
EXCEPTION 
    when NO_DATA_FOUND then 
        raise_application_error(-20000,'ERROR: building not found!'); 
        success := false;
        return (success);
    when ex_amount_less_then_zero then 
        raise_application_error(-20001,'ERROR: amount or minimum-amount can not be less then zero!'); 
        success := false;
        return (success);
end;
