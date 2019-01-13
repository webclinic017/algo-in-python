import sqlite3



db.create_table("ohlc",{"id":"number","fname":"varchar"})
class Db:
    def __init__(self,file_name):
        self.db_name = file_name
        self.con = sqlite3.connect(self.db_name)

    def create_table(self,tbl_name,coloumns):
        self.tbl_name = tbl_name
        self.cur = self.con 
        tbl_def = ""
        for key, val in coloumns.items():
            tbl_def += key +" " + val + " , "
        tbl_def = tbl_def[:-2]
        try:
            self.cur.execute("create table if not exits "+self.tbl_name+ "( "+ tbl_def +" );")
            self.cur.close()
            self.con.commit()
            self.con.close()
            print("Success : Table created successfully : ",self.tbl_name)
        except:
            self.cur.close()
            self.con.rollback()
            self.con.commit()
            self.con.close()
            


    


db = Db("./mytestdb.db")