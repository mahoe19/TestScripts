import csv
from operator import mod
with open('const_redo/const7.csv', 'r') as inp, open('const_redo/with_delta_t_const7.csv', 'w') as out:
    writer = csv.writer(out)
    for row in csv.reader(inp):
        if row[1] != "0":
            writer.writerow(row)
            print(row)