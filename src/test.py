import MySQLdb as sql


host="localhost"
user="root"
password="1124"
db="test"


# for arr in array:
#     arr = tuple(arr)
    # sql_query = """insert into  instrument_list (instrument_token, exchange_token, 
    # tradingsymbol,name, last_price, expiry, strike, tick_size, 
    # lot_size, instrument_type, segment, exchange) values {}  ;""".format(arr)
sql_query1 ="""insert into  instrument_list (instrument_token , exchange_token , tradingsymbol , name , last_price , expiry , strike , tick_size , lot_size , instrument_type , segment , exchange) values (138789892, '542148', 'RXXXX1Z', "", 0.0, null, 0.0, 0.01, 1, 'EQ', 'BSE', 'BSE') ;"""
# mydb.without_return_query(sql)
conn = sql.connect(host=host,user=user,password=password,db=db)
cur = conn.cursor()
cur.execute(sql_query1)
cur.close()
conn.commit()
conn.close()
print("Success: query run successfully : ",sql_query1)

