CREATE TABLE Buildings
(
  building_id INT NOT NULL,
  building_first_name VARCHAR(20) NOT NULL,
  building_last_name VARCHAR(20) NOT NULL,
  wing_id INT NOT NULL,
  PRIMARY KEY (building_id),
  FOREIGN KEY (wing_id) REFERENCES MKLEMFNE.WING(wingid)
);

CREATE TABLE Room_types
(
  room_type_id INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  PRIMARY KEY (room_type_id)
);

CREATE TABLE Rooms
(
  room_id INT NOT NULL,
  room_type_id INT NOT NULL,
  building_id INT NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (room_id),
  FOREIGN KEY (building_id) REFERENCES Buildings(building_id),
  FOREIGN KEY (room_type_id) REFERENCES Room_types(room_type_id),
  FOREIGN KEY (department_id) REFERENCES MKLEMFNE.DEPARTMENT(department_id)
);

CREATE TABLE Equipments
(
  equipment_name VARCHAR(40) NOT NULL,
  amount INT NOT NULL,
  min_amount INT NOT NULL,
  building_id INT NOT NULL,
  PRIMARY KEY (equipment_name),
  FOREIGN KEY (building_id) REFERENCES Buildings(building_id)
);
