Get historical data
Get historical OHLC data for any symbol

u.get_ohlc(u.get_instrument_by_symbol('NSE_EQ', 'RELIANCE'), 
	OHLCInterval.Minute_10, datetime.datetime.strptime('01/07/2017', '%d/%m/%Y').date(),
   datetime.datetime.strptime('07/07/2017', '%d/%m/%Y').date())