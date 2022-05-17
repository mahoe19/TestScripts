import csv
with open('digital.csv', 'r') as inp, open('with_delta_t.csv', 'w') as out:
    writer = csv.writer(out)
    for row in csv.reader(inp):
        if row[1] != "0":
            writer.writerow(row)
            print(row)