# // start 
#   call test_login.py
#       fail --> call login.py
#       success --> update instrument_list
#                   update stock_details
# //stop

import MySQLdb as sql
import pandas as pd
import numpy as np
import kiteconnect
import csv

from mysql_wrapper import MyDb
from time import sleep

host="localhost"
user="root"
password="1124"
db="test"
mydb = MyDb(host,user,password,db)


# instrument_token	exchange_token	tradingsymbol	name	last_price	expiry	strike	tick_size	lot_size	instrument_type	segment	exchange

# df = pd.read_csv('kite.csv')
# array = np.array(df)
def download_instrument_list_from_kite():
    kt = kiteconnect.KiteConnect('kitefront')
    instrument = kt.instruments()
    return instrument


def insert_into_instrument_list(instrument):
    for inst in instrument:
        if inst['expiry'] =="":
            inst['expiry'] = "2015-01-01 12:02:28"
        t = tuple(inst.keys())
        col = " , ".join(t)
        # print("*"*20)
        val = tuple(inst.values())
        sql_query = """insert into  instrument_list ({}) values {} ;""".format(col,val)
        try:
            conn = sql.connect(host,user,password,db)
            cur = conn.cursor()
            cur.execute(sql_query)
            cur.close()
            conn.commit()
            conn.close()
            print("Success: query run successfully : ",sql_query)
        except:
            cur.close()
            conn.rollback()
            conn.close()
            print("Error: commad failed : ",sql_query)

def update_and_insert_nifty_stock():
    with open('./nifty.csv') as csvfile:
        data = csv.reader(csvfile,delimiter=",")
        for row in data:
            exchange = "NSE"
            symbol=row[0]
            nifty_50_group = "Y"
            data = (exchange,symbol,nifty_50_group)
            sql_query = """insert into  stock_details (exchange,symbol,nifty_50_group) values {} ON DUPLICATE KEY UPDATE nifty_50_group='Y' ;""".format(data)
            try:
                conn = sql.connect(host,user,password,db)
                cur = conn.cursor()
                cur.execute(sql_query)
                cur.close()
                conn.commit()
                conn.close()
                print("Success: query run successfully : ",sql_query)
            except:
                cur.close()
                conn.rollback()
                conn.close()
                print("Error: commad failed : ",sql_query)


def update_and_insert_nse_fo_stock():
    with open('./nse_fo_stock.csv') as csvfile:
        data = csv.reader(csvfile,delimiter=",")
        for row in data:
            exchange = "NSE"
            symbol=row[0]
            nifty_fo_stocks = "Y"
            data = (exchange,symbol,nifty_fo_stocks)
            sql_query = """insert into  stock_details (exchange,symbol,nifty_fo_stocks) values {} ON DUPLICATE KEY UPDATE nifty_fo_stocks='Y' ;""".format(data)
            try:
                conn = sql.connect(host,user,password,db)
                cur = conn.cursor()
                cur.execute(sql_query)
                cur.close()
                conn.commit()
                conn.close()
                print("Success: query run successfully : ",sql_query)
            except:
                cur.close()
                conn.rollback()
                conn.close()
                print("Error: commad failed : ",sql_query)


def update_and_insert_nse_400_stock():
    with open('./nifty_400.csv') as csvfile:
        data = csv.reader(csvfile,delimiter=",")
        for row in data:
            exchange = "NSE"
            symbol=row[0]
            nifty_500_group = "Y"
            data = (exchange,symbol,nifty_500_group)
            sql_query = """insert into  stock_details (exchange,symbol,nifty_500_group) values {} ON DUPLICATE KEY UPDATE nifty_500_group='Y' ;""".format(data)
            try:
                conn = sql.connect(host,user,password,db)
                cur = conn.cursor()
                cur.execute(sql_query)
                cur.close()
                conn.commit()
                conn.close()
                print("Success: query run successfully : ",sql_query)
            except:
                cur.close()
                conn.rollback()
                conn.close()
                print("Error: commad failed : ",sql_query)

