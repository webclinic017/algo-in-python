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


kt = kiteconnect.KiteConnect('kitefront')
instrument = kt.instruments()

for inst in instrument:
    if inst['expiry'] =="":
        inst['expiry'] = "2015-01-01 12:02:28"
    t = tuple(inst.keys())
    col = " , ".join(t)
    # print("*"*20)
    val = tuple(inst.values())
    sql = """insert into  instrument_list ({}) values {} ;""".format(col,val)
    mydb.without_return_query(sql)
    # print("$"*20)
    # print("")
    # sleep(10)

# # for arr in array:
#     arr = tuple(arr)
#     sql = """insert into  instrument_list (instrument_token, exchange_token, 
#     tradingsymbol,name, last_price, expiry, strike, tick_size, 
#     lot_size, instrument_type, segment, exchange) values {}""".format(arr)
#     mydb.without_return_query(sql)
    
