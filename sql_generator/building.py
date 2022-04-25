from .csv_writer import writer
from random import randint as rnd
from faker import Faker

dep_id_range = [0, 1001+1]
building_id_range = [1, 20001]

file = 'building.csv'
fields = ['building_id', 'building_name', 'department_id']
rows = []

names = set()
fake = Faker()

for i in range(*building_id_range):
    while (name := fake.name()) in names:
        pass
    names.add(name)
    rows += [i, name, rnd(*dep_id_range)]

writer(file, fields, rows)
