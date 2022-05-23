from csv_writer import *
from building import building_id_range
from random import randint as rnd, choice
from time import time as t


file = 'equipments.csv'
equipments = 'equipments.txt'
fields = ['equipment_name', 'amount', 'min_amount', 'building_id']
rows = []

if __name__ == '__main__':
    t1 = t()
    with open(equipments, 'r') as f:
        data = f.read().splitlines()
    
    for d in data:
        rows += [[d, rnd(0, 50), rnd(5, 15), choice(range(*building_id_range))]]
    
    t2 = t()
    writer(file, fields, rows)
    print(t2 - t1, t() - t2, sep='\n')
