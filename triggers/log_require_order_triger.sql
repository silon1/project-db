create or replace trigger log_require_order_triger
  before update
  on equipments 
  for each row
declare
begin
  if :new.amount<:old.min_amount then
    dbms_output.put_line('The quantity of the equipment: '||:old.equipment_name||' is smaller than recommended ('||:new.amount||'/'||:old.min_amount||')' ); 
  end if;
end ;
