create or replace function AddNewBuilding(firstName in string, lastName in string, wingId in int) 
       return buildings.building_id%type
is
         
begin
  select MAX(building_id)+1 into buildingId from buildings;
  insert into buildings(building_id, first_name,last_name,wing_id) 
  values(buildingId, firstName ,lastName,wingId);
  return(FunctionResult);
  commit;
  dbms_output.put_line("sda");
  return (buildingId)
end AddNewBuilding;
