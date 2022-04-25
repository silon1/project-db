import random
from .csv_writer import writer
from .building import building_id_range
from random import randint as rnd, choice

dep_id_range = [0, 1001+1]
wing_id_range = [0, 399+1]

room_type = ['show', 'services', 'workshow', 'administration']
base_rooms = ['lobby', 'services', 'show', 'show', 'show', 'show']

file = 'building.csv'
fields = ['room_id', 'room_type', 'wing_id', 'building_id']
rows = []

names = set()

for i in range(*building_id_range):
    rooms = base_rooms
    rooms += [choice(room_type) for _ in range(rnd(2, 5))]
    for j, room in enumerate(rooms):
        rows += [j, room, choice(range(*wing_id_range)), i]

writer(file, fields, rows)
