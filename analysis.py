



"""----------------intraday_trade_methology------------------  """
def max_loss():
	return (margin_allotted *  max_risk_PCT ) / 100

def max_loss_per_stock():
	return max_loss / min_no_of_open_stock



def no_of_long_position(exchange,symbol):
	pass

def no_of_short_position(exchange, symbol):
	pass

def no_of_positions(no_of_long_position,no_of_short_position):
	return no_of_long_position + no_of_short_position

def total_loss():
	pass

def nifty_trend():
	pass

def stop_opening_trade():
	if no_of_open_stock >= max_no_of_open_stock:
		return True
	else False

def stop_opening_trade():
	if total_loss => max_loss:
		return True
	else:
		False
	
def stop_long_positions():
	if no_of_long_position >= max_no_of_long_positions:
		return True
	else:
		return False

def stop_short_positions():
	if no_of_short_position >= max_no_of_short_positions:
		return True
	else:
		False











