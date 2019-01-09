import sqlite3 as sql


class table:
    def __init__(self,dbname,table_name):
        self.dbname = dbname
        self.tblname = table_name

    
    def show_all_data(self,tblname):
        conn = sql.connect(self.dbname)
        cur = conn.cursor()
	    cur.execute('select * from '+ self.tblname)
        data = cur.fetchall()
	    cur.close()
	    conn.close()
	    print(data)

    def return_all_data(self):
        conn = sql.connect(self.dbname)
