import csv
with open('read_speed_test/f_read.csv', 'r') as inp, open('changing_pBlock/f_read_with_delta_t.csv', 'w') as out:
    writer = csv.writer(out)
    for row in csv.reader(inp):
        if row[1] != "0":
            writer.writerow(row)
            print(row)