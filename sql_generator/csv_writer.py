import csv

def writer(file, fields, rows):
    with open(file, 'w') as f:
        a = csv.writer(f)
        a.writerow(fields)
        a.writerows(rows)