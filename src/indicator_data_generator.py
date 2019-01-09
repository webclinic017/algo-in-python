# //start
# call test_login.py
#   fail --> call login.py
#   success --> get watchlist
#               call test_database_and_table.py
#                   fail --> call connect_db.py
#                   success -->                    
#                        update indicator_data_monthly
#                        update indicator_data_weekly
#                    ----update indicator_data_daily
#                        update indicator_data_60min      
#                        update indicator_data_15min      
#                        update indicator_data_5min      
#                        update indicator_data_1min 
#                        time < 3:30 pm
#                            False --> //stop
#                            True ---> goto -------    