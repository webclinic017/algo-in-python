Profile
{ 
   "code":200,
   "status":"OK",
   "timestamp":"2017-07-18T10:32:02+05:30",
   "message":"success",
   "data":{ 
      "client_id": "240001",
      "name": "Raj Prakash",
      "email": "raj.prakash@mymail.com",
      "phone": "9820098200",
      "exchanges_enabled":[ 
         "BSE_EQ",
         "NSE_EQ",
         "NSE_FO",
         "MCX_FO",
         "NCD_FO",
         "BCD_FO"
      ],
      "products_enabled":[ 
         "OCO",
         "D",
         "CO",
         "I"
      ]
   }
}







balance
{
  "code": 200,
  "status": "OK",
  "timestamp": "2017-05-15T14:35:57+05:30",
  "message": "success",
  "data": {
    "equity": {
      "used_margin": 67.2125,
      "payin_amount": 0,
      "span_margin": 0,
      "adhoc_margin": 0,
      "notional_cash": 0,
      "available_margin": 99320.78,
      "exposure_margin": 0
    },
    "commodity": {
      "used_margin": 0,
      "payin_amount": 0,
      "span_margin": 0,
      "adhoc_margin": 0,
      "notional_cash": 0,
      "available_margin": 5200.45,
      "exposure_margin": 0
    }
  }
}




Balance for commodity:
{
  "code": 200,
  "status": "OK",
  "timestamp": "2017-05-15T14:35:57+05:30",
  "message": "success",
  "data": {
    "commodity": {
      "used_margin": 0,
      "payin_amount": 0,
      "span_margin": 0,
      "adhoc_margin": 0,
      "notional_cash": 0,
      "available_margin": 5200.45,
      "exposure_margin": 0
    }
  }
}

Subscribe to a live feed
Start getting live feed via socket

def event_handler_quote_update(message):
    print("Quote Update: %s" % str(message))

u.set_on_quote_update(event_handler_quote_update)

u.subscribe(u.get_instrument_by_symbol('NSE_EQ', 'TATASTEEL'), LiveFeedType.Full)
u.subscribe(u.get_instrument_by_symbol('BSE_EQ', 'RELIANCE'), LiveFeedType.LTP)

u.start_websocket(True)




positions
{
    "code": 200,
    "status": "OK",
    "timestamp": "2017-07-27T13:26:33+05:30",
    "message": "success",
    "data": [
        {
            "exchange": "NSE_FO",
            "product": "D",
            "symbol": "NIFTY17AUG10100CE",
            "token": 66416,
            "buy_amount": 0,
            "sell_amount": 0,
            "buy_quantity": 0,
            "sell_quantity": 0,
            "cf_buy_amount": 0,
            "cf_sell_amount": 751548.75,
            "cf_buy_quantity": 0,
            "cf_sell_quantity": 75,
            "avg_buy_price": "",
            "avg_sell_price": 108.6,
            "net_quantity": -75,
            "close_price": 108.6,
            "last_traded_price": 128,
            "realized_profit": "",
            "unrealized_profit": -1455.0000000000005,
            "cf_avg_price": "72.00"
        }
    ]
}



holdings
{
    "code": 200,
    "status": "OK",
    "timestamp": "2017-07-27T13:06:03+05:30",
    "message": "success",
    "data": [
        {
            "instrument": [
                {
                    "exchange": "NSE_EQ",
                    "symbol": "ASHOKLEY",
                    "token": 212
                },
                {
                    "exchange": "BSE_EQ",
                    "symbol": "ASHOKLEY",
                    "token": 500477
                }
            ],
            "product": "D",
            "collateral_type": "WC",
            "cnc_used_quantity": 0,
            "quantity": 10,
            "collateral_qty": 0,
            "haircut": 25,
            "avg_price": "76"
        }
    ]
}





Master Contracts
{
  "code": 200,
  "status": "OK",
  "timestamp": "2017-07-18T10:45:33+05:30",
  "message": "success",
  "data": [
      "exchange,token,parent_token,symbol,name,closing_price,expiry,strike_price,tick_size,lot_size,instrument_type,isin",
      "NSE_EQ,16921,,20MICRONS,20 MICRONS LTD,39.7,,,5,1,EQUITY,INE144J01027",
      "NSE_EQ,11774,,3IINFOTECH,3I INFOTECH LTD.,4.45,,,5,1,EQUITY,INE748C01020",
      "NSE_EQ,474,,3MINDIA,3M INDIA LIMITED,13686.2,,,5,1,EQUITY,INE470A01017",
      "NSE_EQ,11868,,63MOONS,63 MOONS TECHNOLOGIES LTD,62.95,,,5,1,EQUITY,INE111B01023",
      "NSE_EQ,11058,,8KMILES,8K MILES SOFT SERV LTD,541.6,,,5,1,EQUITY,INE650K01021",
      "NSE_EQ,20906,,A2ZINFRA,A2Z INFRA ENGINEERING LTD,43.1,,,5,1,EQUITY,INE619I01012",
      "NSE_EQ,11341,,AIFL,ASHAPURA INTI FASHION LTD,401.4,,,5,1,EQUITY,INE428O01016",....
  ]
}
{ 
   "code":200,
   "status":"OK",
   "timestamp":"2017-07-18T10:47:32+05:30",
   "message":"success",
   "data":{ 
      "lower_circuit":1396.6,
      "upper_circuit":1706.9,
      "instrument_name":"EQUITY",
      "gn":-1,
      "gd":-1,
      "pn":-1,
      "pd":-1,
      "circuit_limit":"1396.60-1706.90",
      "status":"Eligible",
      "yearly_low":930,
      "yearly_high":1550,
      "symbol":"RELIANCE",
      "lot_size":1,
      "exchange":"NSE_EQ",
      "closing_price":1551.75,
      "open_interest":"",
      "tick_size":5,
      "name":"RELIANCE INDUSTRIES LTD",
      "token":2885,
      "isin":"INE002A01018"
   }
}
{ 
   "code":200,
   "status":"OK",
   "timestamp":"2017-07-18T10:49:33+05:30",
   "message":"success",
   "data":{ 
      "lower_circuit":885.65,
      "upper_circuit":1082.45,
      "instrument_name":"EQUITY",
      "gn":-1,
      "gd":-1,
      "pn":-1,
      "pd":-1,
      "circuit_limit":"885.65-1082.45",
      "status":"Eligible",
      "yearly_low":901,
      "yearly_high":1196.05,
      "symbol":"INFY",
      "lot_size":1,
      "exchange":"NSE_EQ",
      "closing_price":984.05,
      "open_interest":"",
      "tick_size":5,
      "name":"INFOSYS LIMITED",
      "token":1594,
      "isin":"INE009A01021"
   }
}







Orders History
{
    "code": 200,
    "status": "OK",
    "timestamp": "2017-03-28T17:01:02+05:30",
    "message": "success",
    "data": [
        {
            "exchange": "NSE_EQ",
            "token": 2885,
            "symbol": "RELIANCE",
            "product": "I",
            "order_type": "L",
            "duration": "DAY",
            "price": 1080,
            "trigger_price": 0,
            "quantity": 1,
            "disclosed_quantity": 0,
            "transaction_type": "B",
            "average_price": 1080,
            "traded_quantity": 1,
            "message": "",
            "exchange_order_id": "1100000000006972",
            "parent_order_id": "NA",
            "order_id": "170328000000030",
            "exchange_time": "28-Mar-2017 12:42:42",
            "time_in_micro": "1490697859120172",
            "status": "complete",
            "is_amo": false,
            "valid_date": "--",
            "order_request_id": "1"
        }
    ]
}






Orders Details
{
    "code": 200,
    "status": "OK",
    "timestamp": "2017-08-03T15:16:38+05:30",
    "message": "success",
    "data": [
        {
            "exchange": "NSE_EQ",
            "token": 3045,
            "symbol": "SBIN",
            "product": "I",
            "order_type": "M",
            "duration": "DAY",
            "price": 0,
            "trigger_price": 0,
            "quantity": 1,
            "disclosed_quantity": 0,
            "transaction_type": "B",
            "average_price": 299.4,
            "traded_quantity": 1,
            "message": "",
            "exchange_order_id": "1100000000062530",
            "parent_order_id": "NA",
            "order_id": "170803000000038",
            "exchange_time": "03-Aug-2017 15:03:42",
            "time_in_micro": "1501752667641223",
            "status": "complete",
            "is_amo": false,
            "valid_date": "",
            "fill_leg": "111",
            "order_request_id": "1",
            "report": "",
            "text": ""
        },
        {
            "exchange": "NSE_EQ",
            "token": 3045,
            "symbol": "SBIN",
            "product": "I",
            "order_type": "M",
            "duration": "DAY",
            "price": 0,
            "trigger_price": 0,
            "quantity": 1,
            "disclosed_quantity": 1,
            "transaction_type": "B",
            "average_price": 0,
            "traded_quantity": 0,
            "message": "",
            "exchange_order_id": "1100000000062530",
            "parent_order_id": "NA",
            "order_id": "170803000000038",
            "exchange_time": "03-Aug-2017 15:03:42",
            "time_in_micro": "1501752667639709",
            "status": "open",
            "is_amo": false,
            "valid_date": "",
            "fill_leg": "0",
            "order_request_id": "1",
            "report": "",
            "text": ""
        },
        {
            "exchange": "NSE_EQ",
            "token": 3045,
            "symbol": "SBIN",
            "product": "I",
            "order_type": "M",
            "duration": "DAY",
            "price": 0,
            "trigger_price": 0,
            "quantity": 1,
            "disclosed_quantity": 1,
            "transaction_type": "B",
            "average_price": 0,
            "traded_quantity": 0,
            "message": "",
            "exchange_order_id": "",
            "parent_order_id": "NA",
            "order_id": "170803000000038",
            "exchange_time": "",
            "time_in_micro": "1501752667600392",
            "status": "open pending",
            "is_amo": false,
            "valid_date": "",
            "fill_leg": "0",
            "order_request_id": "1",
            "report": "",
            "text": ""
        },
        {
            "exchange": "NSE_EQ",
            "token": 3045,
            "symbol": "SBIN",
            "product": "I",
            "order_type": "M",
            "duration": "DAY",
            "price": 0,
            "trigger_price": 0,
            "quantity": 1,
            "disclosed_quantity": 1,
            "transaction_type": "B",
            "average_price": 0,
            "traded_quantity": 0,
            "message": "",
            "exchange_order_id": "",
            "parent_order_id": "NA",
            "order_id": "170803000000038",
            "exchange_time": "",
            "time_in_micro": "1501752667308275",
            "status": "validation pending",
            "is_amo": false,
            "valid_date": "",
            "fill_leg": "0",
            "order_request_id": "1",
            "report": "",
            "text": ""
        },
        {
            "exchange": "NSE_EQ",
            "token": 3045,
            "symbol": "SBIN",
            "product": "I",
            "order_type": "M",
            "duration": "DAY",
            "price": 0,
            "trigger_price": 0,
            "quantity": 1,
            "disclosed_quantity": 1,
            "transaction_type": "B",
            "average_price": 0,
            "traded_quantity": 0,
            "message": "",
            "exchange_order_id": "",
            "parent_order_id": "NA",
            "order_id": "170803000000038",
            "exchange_time": "",
            "time_in_micro": "1501752667303641",
            "status": "put order req received",
            "is_amo": false,
            "valid_date": "",
            "fill_leg": "0",
            "order_request_id": "1",
            "report": "",
            "text": ""
        }
    ]
}








Trade Book
{
    "code": 200,
    "status": "OK",
    "timestamp": "2017-08-03T15:24:06+05:30",
    "message": "success",
    "data": [
        {
            "exchange": "NSE_EQ",
            "token": 3045,
            "symbol": "SBIN",
            "product": "I",
            "order_type": "M",
            "transaction_type": "B",
            "traded_quantity": 1,
            "exchange_order_id": "1100000000062530",
            "order_id": "170803000000038",
            "exchange_time": "03-Aug-2017 15:03:42",
            "time_in_micro": "1501752667641223",
            "traded_price": 299.4,
            "trade_id": "50091502"
        },
        {
            "exchange": "NSE_EQ",
            "token": 3045,
            "symbol": "SBIN",
            "product": "I",
            "order_type": "M",
            "transaction_type": "B",
            "traded_quantity": 1,
            "exchange_order_id": "1100000000068410",
            "order_id": "170803000000040",
            "exchange_time": "03-Aug-2017 15:23:01",
            "time_in_micro": "1501753826450445",
            "traded_price": 294.55,
            "trade_id": "50091780"
        },
        {
            "exchange": "NSE_EQ",
            "token": 694,
            "symbol": "CIPLA",
            "product": "I",
            "order_type": "M",
            "transaction_type": "B",
            "traded_quantity": 1,
            "exchange_order_id": "1000000000054988",
            "order_id": "170803000000041",
            "exchange_time": "03-Aug-2017 15:23:15",
            "time_in_micro": "1501753840617453",
            "traded_price": 559.7,
            "trade_id": "75686"
        }
    ]
}




Trade History
{
  "code": 200,
  "status": "OK",
  "timestamp": "2017-05-15T14:48:52+05:30",
  "message": "success",
  "data": [
    {
      "exchange": "NSE_EQ",
      "token": 2885,
      "symbol": "RELIANCE",
      "product": "I",
      "order_type": "M",
      "transaction_type": "B",
      "traded_quantity": 1,
      "exchange_order_id": "1200000003336976",
      "order_id": "170515000047270",
      "exchange_time": "15-May-2017 13:56:31",
      "time_in_micro": "1494836825761723",
      "traded_price": 0,
      "trade_id": "51345784",
    }
  ]
}




Place Order
{{
transaction_type
required	
Indicates whether its a buy(b) or sell(s) order


exchange	
required	
Exchange to which the order is associated


symbol	
required	
Shows the trading symbol which could be a combination of symbol name, instrument, expiry date etc


quantity	
required	
Quantity with which the order was placed


order_type	
required	
Type of order. It can be one of the following
M refers to market order
L refers to Limit Order
SL refers to Stop Loss Limit
SL-M refers to Stop loss market


product	
required	
Shows if the order was either Intraday, Delivery, CO or OCO


price	
optional	
Price at which the order will be placed


trigger_price	
optional	
If the order is a stop loss order then the trigger price set is mentioned here


disclosed_quantity	
optional	
The quantity that should be disclosed in the market depth


duration	
optional	
It can be one of the following
DAY (default)
IOC


is_amo	
optional	
Indicates whether the order is an AMO order or not


stoploss	
optional	
Set a difference from the entry price for stoploss. Use in case the product is OCO


squareoff	
optional	
Set a difference from the entry price for profit. Use in case the product is OCO

trailing_ticks	
optional	
Indicates the number of ticks if the order placed was a trailing order. se in case the product is OCO
}}






Modify Order
{{
order_id	
required	
the order id for which the order must be modified



quantity	
optional	
Quantity with which the order was placed



order_type	
optional	
Type of order. It can be one of the following
M refers to market order
L refers to Limit Order
SL refers to Stop Loss Limit
SL-M refers to Stop Loss Market



price	
optional	
Price at which the order was placed



trigger_price	
optional	
If the order was a stop loss order then the trigger price set is mentioned here




disclosed_quantity	
optional	
The quantity that should be disclosed in the market depth
}}



Cancel Order
{{
order_id	
required	
comma separated order ID assigned internally for the order placed
}}



Cancel All Orders
{{}}



