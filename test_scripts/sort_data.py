import csv
with open('data_changing_util/cold.csv', 'r') as inp, open('data_changing_util/cold_with_delta_t.csv', 'w') as out:
    writer = csv.writer(out)
    for row in csv.reader(inp):
        if row[1] != "0":
            writer.writerow(row)
            print(row)