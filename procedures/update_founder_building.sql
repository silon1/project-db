create or replace procedure update_founder_building( arg_first_Name in varchar2, arg_last_Name in varchar2, arg_build_id in integer) is

    CURSOR buildings_cur IS
    SELECT *
    FROM buildings b
    Where b.building_id = arg_build_id;
    build_value buildings_cur%rowtype;

begin
    open buildings_cur;
    fetch buildings_cur into build_value;
    if buildings_cur%notfound then
     raise_application_error(-20008,'ERROR: building not found!'); 
     return;
    end if;
    close buildings_cur;
    
    UPDATE buildings b
    SET b.building_first_name = arg_first_Name, b.building_last_name = arg_last_Name
    WHERE b.building_id = arg_build_id;
    commit;
end update_founder_building;
