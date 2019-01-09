# //start
# call test_login.py
#   fail --> call login.py
#   success --> get watchlist
#               call test_database_and_table.py
#                   fail --> call connect_db.py
#                   success -->                    
#                   ---- load and update account_status
#                        load watchlist
#                        load trade_methodology
#                        time < 3:00 pm
#                            False --> //stop
#                            True ---> load , update and fire order_management
#                                      goto ----   