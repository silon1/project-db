create or replace function order_for_building(buildingID in int) return <Equipment.name>%integer is
  FunctionResult <Equipment.name>%type;
begin
  SELECT e.equipment_name e.min_amount - e.amount
  FROM Equipment e
  WHERE e.building_id=buildingID AND e.amount < e.min_amount 
  return(FunctionResult);
end order_for_building;
