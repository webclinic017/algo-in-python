# //start
# call test_login.py
#   fail --> call login.py
#   success --> get watchlist
#               call test_database_and_table.py
#                   fail --> call connect_db.py
#                   success -->                    
#                   ---- load and update order_book
#                        update open_orders
#                        update pending_orders
#                        update sl_orders
#                        update target_orders
#                        time < 3:30 pm
#                            False --> //stop
#                            True ---> goto ----   