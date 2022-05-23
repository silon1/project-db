from csv_writer import writer
from random import randint as rnd
from faker import Faker
from time import time as t

wing_id_range = [0, 399]
building_id_range = [1, 20001]

file = 'buildings.csv'
fields = ['building_id', 'building_name', 'wing_id']
rows = []

names = set()
fake = Faker()

if __name__ == '__main__':
    t1 = t()

    for i in range(*building_id_range):
        while (name := fake.name()) in names:
            pass
        names.add(name)
        rows += [[i, name, rnd(*wing_id_range)]]

    t2 = t()
    writer(file, fields, rows)
    print(t2 - t1, t() - t2, sep='\n')
