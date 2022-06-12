from csv_writer import *
from building import building_id_range
from random import randint as rnd, choice
import multiprocessing
from time import time as t
from copy import deepcopy as dcp

department_id_range = [0, 1001+1]

room_type = [1]*10 + [2]*2 + [4] + [5]
base_rooms = [3, 2, 1, 1, 1, 1]

file = 'rooms.csv'
fields = ['room_id', 'room_type_id', 'department_id', 'building_id']

names = set()

def generate_rooms(i):
    rooms = dcp(base_rooms)
    rooms += [choice(room_type) for _ in range(rnd(2, 5))]
    return [[f'{i}{str(j+1).zfill(3)}', room, choice(range(*department_id_range)), i] for j, room in enumerate(rooms)]

if __name__ == '__main__':
    t1 = t()
    rows = []
    with multiprocessing.Pool(4) as p:
        for r in p.map(generate_rooms, list(range(*building_id_range))):
            rows += r
    t2 = t()
    writer(file, fields, rows)
    print(t2 - t1, t() - t1, sep='\n')

