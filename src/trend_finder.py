# //start
# call test_login.py
#   fail --> call login.py
#   success --> get watchlist
#               call test_database_and_table.py
#                   fail --> call connect_db.py
#                   success -->                    
#                        update trend_monthly
#                        update trend_weekly
#                    ----update trend_daily
#                        update trend_60min      
#                        update trend_15min      
#                        update trend_5min      
#                        update trend_1min 
#                        time < 3:30 pm
#                            False --> //stop
#                            True ---> goto -------    