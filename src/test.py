# import datetime
# import pytz

# candle = [["2019-01-07T09:15:00+0530",237.9,237.9,237.1,237.45,36304],["2019-01-07T09:18:00+0530",237.25,237.5,237,237.3,32379],["2019-01-07T09:21:00+0530",237.25,237.75,237.25,237.65,35447],["2019-01-07T09:24:00+0530",237.65,237.75,237.3,237.45,27715],["2019-01-07T09:27:00+0530",237.45,237.7,237.05,237.2,34491],["2019-01-07T09:30:00+0530",237.2,237.35,237.1,237.15,9973]]


# dt ='2019-01-07T09:15:00+0530'

# dtime = datetime.datetime.strptime(dt,"%Y-%m-%dT%H:%M:%S%z")

# print(dtime)
 
# stime = datetime.datetime.strftime(dtime,"%Y-%m-%d %H:%M:%S")

# print(stime)

# print(datetime.datetime.now())

import MySQLdb as sql

fname = "guddu"
dd = """ my name is {} """.format(fname)

print(dd)

con = sql.connect(host="localhost",user="root",password="1124",db="test")

con.execute(""" select * from name ;""")

data = con.fetchall()

con.close()
for dat in data:
    print(dat)