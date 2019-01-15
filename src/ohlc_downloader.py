# //start
# call test_login.py
#   fail --> call login.py
#   success --> get watchlist
#               call test_database_and_table.py
#                   fail --> call connect_db.py
#                   success -->                    
#                        update ohlc_monthly
#                        update ohlc_weekly
#                    ----update ohlc_daily
#                        update ohlc_60min      
#                        update ohlc_15min      
#                        update ohlc_5min      
#                        update ohlc_1min 
#                        time < 3:30 pm
#                            False --> //stop
#                            True ---> goto -------    





# dt ='2019-01-07T09:15:00+0530'

# dtime = datetime.datetime.strptime(dt,"%Y-%m-%dT%H:%M:%S%z")

# print(dtime)
 
# stime = datetime.datetime.strftime(dtime,"%Y-%m-%d %H:%M:%S")

# print(stime)

# print(datetime.datetime.now())


# import datetime
# import pytz

import config
from zerodha import Zerodha
import MySQLdb as sql

candle = [["2019-01-07T09:15:00+0530",237.9,237.9,237.1,237.45,36304],["2019-01-07T09:18:00+0530",237.25,237.5,237,237.3,32379],["2019-01-07T09:21:00+0530",237.25,237.75,237.25,237.65,35447],["2019-01-07T09:24:00+0530",237.65,237.75,237.3,237.45,27715],["2019-01-07T09:27:00+0530",237.45,237.7,237.05,237.2,34491],["2019-01-07T09:30:00+0530",237.2,237.35,237.1,237.15,9973]]



public_token= config.public_token
access_token = config.access_token
userid = config.userid

dbname = config.dbname

zerodha = Zerodha(public_token,access_token,userid)
for token in tokens:
    ohlc_monthly = zerodha.get_ohlc("day",token,120)

for ohlc in candle:
    datetime = ohlc[0][:-5]
    ohlc[0] = datetime
    ohlc.append("NSE")
    ohlc.append("SBIN")
    ohlc.append(125052)
    ohlc = tuple(ohlc)
    print(ohlc)
