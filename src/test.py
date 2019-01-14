import pandas as pd

import csv

with open('./nifty.csv') as csvfile:
    data = csv.reader(csvfile,delimiter=",")
    for row in data:
        exchange = "NSE"
        symbol=row[0]
        nifty_50_group = "Y"
        data = (exchange,symbol,nifty_50_group)
        print(data)


