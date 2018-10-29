import csv
from datetime import datetime

ratings = []

with open('ratings.csv', 'r',newline='', encoding='latin-1') as filereader:
    for row in filereader:
        row = row.strip()
        if row != 'userId,movieId,rating,timestamp':
            row_list = row.split(',')
            date = datetime.fromtimestamp(int(row_list[3]))
            ratings.append([int(row_list[0]), row_list[1], row_list[2], date])


with open('db.csv', 'w', encoding='utf-8') as outfile:
    wr = csv.writer(outfile, delimiter=',', lineterminator='\n')
    for i in ratings:
        wr.writerow(i)