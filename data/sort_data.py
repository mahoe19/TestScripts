import csv
with open('Benchmark_Logic_analyzer/logic_analyzer.csv', 'r') as inp, open('Benchmark_Logic_analyzer/with_delta_t_logic_analyzer.csv', 'w') as out:
    writer = csv.writer(out)
    for row in csv.reader(inp):
        if row[1] != "0":
            writer.writerow(row)
            print(row)