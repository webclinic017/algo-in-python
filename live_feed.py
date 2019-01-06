


































Get current market price
u.get_live_feed(u.get_instrument_by_symbol('NSE_EQ', 'ACC'), LiveFeedType.Full)
u.get_live_feed(u.get_instrument_by_symbol('BSE_EQ', 'RELIANCE'), LiveFeedType.LTP)








Subscribe to a live feed
Start getting live feed via socket

def event_handler_quote_update(message):
    print("Quote Update: %s" % str(message))

u.set_on_quote_update(event_handler_quote_update)

u.subscribe(u.get_instrument_by_symbol('NSE_EQ', 'TATASTEEL'), LiveFeedType.Full)
u.subscribe(u.get_instrument_by_symbol('BSE_EQ', 'RELIANCE'), LiveFeedType.LTP)

u.start_websocket(True)

Unsubscribe to a live feed
Unsubscribe to an existing live feed

u.unsubscribe(u.get_instrument_by_symbol('NSE_EQ', 'TATASTEEL'), LiveFeedType.Full)
u.unsubscribe(u.get_instrument_by_symbol('BSE_EQ', 'RELIANCE'), LiveFeedType.LTP)