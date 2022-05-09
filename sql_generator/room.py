from csv_writer import *
from building import building_id_range
from random import randint as rnd, choice
import multiprocessing
from time import time as t
from copy import deepcopy as dcp

dep_id_range = [0, 1001+1]
wing_id_range = [0, 399+1]

room_type = ['show']*10 + ['services']*2 + ['workshow'] + ['administration']
base_rooms = ['lobby', 'services', 'show', 'show', 'show', 'show']

file = 'rooms.csv'
fields = ['room_id', 'room_type', 'wing_id', 'building_id']

names = set()

def generate_rooms(i):
    rooms = dcp(base_rooms)
    rooms += [choice(room_type) for _ in range(rnd(2, 5))]
    return [[f'{i}{j+1}', room, choice(range(*wing_id_range)), i] for j, room in enumerate(rooms)]

if __name__ == '__main__':
    t1 = t()
    rows = []
    with multiprocessing.Pool(4) as p:
        for r in p.map(generate_rooms, list(range(*building_id_range))):
            rows += r
    t2 = t()
    writer(file, fields, rows)
    print(t2 - t1, t() - t1, sep='\n')

