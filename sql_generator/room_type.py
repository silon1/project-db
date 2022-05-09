from csv_writer import *


file = 'room_types.csv'
fields = ['room_type_id', 'name']
rows = [[1, 'show'], [2, 'services'], [3, 'lobby'], [4, 'workshow'], [5, 'administration']]

writer(file, fields, rows)