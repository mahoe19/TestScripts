import csv
from operator import mod
with open('Full_recon/full_recon.csv', 'r') as inp, open('Full_recon/with_delta_t_full_recon.csv', 'w') as out:
    writer = csv.writer(out)
    for row in csv.reader(inp):
        if row[1] != "0":
            writer.writerow(row)
            print(row)