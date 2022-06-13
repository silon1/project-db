create or replace function ADD_ROOM(arg_room_type_id in integer, arg_dep_id in integer, arg_build_id in integer)
  return boolean is
  ex_invalid_room_type_id Exception;
  dep_id_not_found Exception;
  build_id_not_found Exception;
  
  CURSOR room_type_cur IS
    SELECT ROOM_TYPE_ID
    FROM Room_Types r
    Where r.room_type_id = arg_room_type_id;
  room_type_value room_type_cur%rowtype;
  
  CURSOR build_id_cur IS
    SELECT b.building_id
    FROM buildings b
    where b.building_id = arg_build_id;
    build_id_value build_id_cur%rowtype;
  
  
  CURSOR dep_id_cur IS
    SELECT d.departmentid
    FROM MKLEMFNE.DEPARTMENT d
    where d.departmentid = arg_dep_id;
    dep_id_value dep_id_cur%rowtype;
  c integer default 0;
  new_room_id integer default 0; 
  
  CURSOR rooms_ids IS
    SELECT r.room_id
    FROM rooms r;
  rooms_ids_values rooms_ids%rowtype;
 BEGIN
   
  -- checking arguments 
  OPEN room_type_cur;
  fetch room_type_cur into room_type_value;
  IF room_type_cur%notfound then
   raise_application_error(-20002,'ERROR: invalid room type!'); 
   return (false);
  end if;
  close room_type_cur;
  
  OPEN build_id_cur;
  fetch build_id_cur into build_id_value;
  IF build_id_cur%notfound then
   raise_application_error(-20003,'ERROR: the building is not exsist!'); 
   return (false);
  end if;
  close build_id_cur;
  
  OPEN dep_id_cur;
  fetch dep_id_cur into dep_id_value;
  IF dep_id_cur%notfound then
   raise_application_error(-20004,'ERROR: the department is not exsist!'); 
   return (false);
  end if;
  close dep_id_cur;
  
  -- computing the next id 
  SELECT count(*) into c 
  FROM rooms r
  where r.building_id = arg_build_id;
  
  if c >= 999 then
    raise_application_error(-20005,'ERROR: Exceed to his limit, only 1000 rooms allowed in one building !'); 
    return (false);
  end if;
  
  
  -- inserting the new room 
  OPEN rooms_ids;
  fetch rooms_ids into rooms_ids_values;
  close rooms_ids;
  loop
    new_room_id := new_room_id+1;
    if new_room_id not in (rooms_ids_values) then

      INSERT INTO ROOMS 
      VALUES (new_room_id, arg_room_type_id, arg_dep_id, arg_build_id);
      commit;
      exit;
    end if;
  end loop;
    return (true);  
 end;
