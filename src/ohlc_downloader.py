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