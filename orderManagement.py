


positions_status = get_positions_status_from_database()
no_of_long_position = positions_status.no_of_long_position
no_of_short_position = positions_status.no_of_short_position
no_of_open_postions = positions_status.no_of_open_postions

total_loss = get_total_loss_from_database()

market_trend = get_market_trend_from_database()
nifty_trend = market_trend.nifty_trend
is_only_trade_in_nifty_trend = market_trend.is_only_trade_in_nifty_trend

risk_matrix = get_risk_matrix_from_database()
min_no_of_positions = risk_matrix.min_no_of_positions
max_no_of_positions = risk_matrix.max_no_of_positions
max_no_of_long_positions = risk_matrix.max_no_of_long_positions
max_no_of_short_positions = risk_matrix.max_no_of_short_positions
max_loss = risk_matrix.max_loss

order_list = get_orders_from_database()

# iterate oreder
for order in order_list:
	# stop_triger = get_stop_triger_from_database()
	# if max_loss limit crossed get exit
	if total_loss => max_loss:
		break
	# if maximum number of open open position get exit
	elif no_of_open_postions => max_no_of_open_positions:
		break
	else:
		# check weather it is set to trade in only market direction
		if market_trend.is_only_trade_in_nifty_trend:
			# if market is up only buy
			if market_trend.nifty_trend == "UP":
				# if maximum number of long poition alreary exists then get exit
				if no_of_long_position >= max_no_of_long_positions:
					break
				else:
					# buy only if transaction_type is "BUY"
					if order.transaction_type =="BUY":
						place_order(order)
        			else:
        				continue
        	# if market is dowm only sell		
        	elif market_trend.nifty_trend == "DOWN":
        		# if maximum number of short poition alreary exists then get exit
        		if no_of_short_position >= max_no_of_short_positions:
        			continue
        		else:
        			# sell only if transaction_type is "SELL"
        			if order.transaction_type == "SELL":
        				place_order(order)
        			else:
        				continue
        	# if market is niether up nor down
        	else:
        		# if transaction_type is "BUY"
        		if order.transaction_type == "BUY":
        			# if maximum number of long poition alreary exists then get exit
	        		if no_of_long_position >= max_no_of_long_positions:
	        			continue
	        		elif :
	        			place_order(order)
        		elif order.transaction_type == "SELL":
        			if no_of_short_position >= max_no_of_short_positions:
        				continue
        			else:
        				place_order(order)
        
        else:
      		# if transaction_type is "BUY"
    		if order.transaction_type == "BUY":
    			# if maximum number of long poition alreary exists then get exit
        		if no_of_long_position >= max_no_of_long_positions:
        			continue
        		elif :
        			place_order(order)
    		elif order.transaction_type == "SELL":
    			if no_of_short_position >= max_no_of_short_positions:
    				continue
    			else:
    				place_order(order)
        







	



	
