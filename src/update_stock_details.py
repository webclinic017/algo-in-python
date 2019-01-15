import config
import MySQLdb as sql
from time import sleep

dbname = config.db_name
dbhost = config.db_host
dbpassword = config.db_password
dbuser = config.db_user


con = sql.connect(dbhost,dbuser,dbpassword,dbname)
cur = con.cursor()
sql_query = """select exchange, symbol from stock_details;"""
cur.execute(sql_query)
stocklist = cur.fetchall()
cur.close()
con.close()

for stock in stocklist:
    con = sql.connect(dbhost,dbuser,dbpassword,dbname)
    cur = con.cursor()
    exchange, symbol = stock    
    print(exchange)
    print(symbol)
    sleep(20)
    sql_query = """select instrument_token from instrument_list where `symbol` = {}""".format(symbol)
    cur.execute(sql_query)
    token_by_zerodha = cur.fetchall()
    print(token_by_zerodha)
    # # print(token_by_zerodha)
    # sql_query = """UPDATE stock_details SET token_by_zerodha = {} where exchange ={} and symbol={}""".format(token_by_zerodha,exchange,symbol)


    cur.close()
    con.commit()
    con.close()




