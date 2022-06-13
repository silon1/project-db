create or replace procedure change_room_type(arg_room_id in integer, arg_room_type_id in integer) is
 
 CURSOR room_cur IS
    SELECT r.room_id
    FROM rooms r
    Where r.room_id = arg_room_id;
    room_value room_cur%rowtype;
    
  CURSOR room_type_cur IS
    SELECT ROOM_TYPE_ID
    FROM Room_Types r
    Where r.room_type_id = arg_room_type_id;
  room_type_value room_type_cur%rowtype;

begin
  
  -- checking arguments 
  OPEN room_type_cur;
  fetch room_type_cur into room_type_value;
  IF room_type_cur%notfound then
   raise_application_error(-20006,'ERROR: invalid room type!'); 
   return;
  end if;
  close room_type_cur;
  
  
  OPEN room_cur;
  fetch room_cur into room_value;
  IF room_cur%notfound then
   raise_application_error(-20007,'ERROR: room not found!'); 
   return;
  end if;
  close room_cur;
  
  UPDATE rooms r
  SET r.room_type_id = arg_room_type_id
  WHERE r.room_id = arg_room_id;

  commit;

end change_room_type;
