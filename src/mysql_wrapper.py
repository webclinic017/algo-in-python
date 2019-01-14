

import MySQLdb as sql


class MyDb:
    def __init__(self,host,user,password,db):
        self.host=host
        self.user=user
        self.password=password
        self.db=db

        self.con = sql.connect(host=self.host,user=self.user,password=self.password,db=self.db)

    def without_return_query(self,sql_query):
        try:
            conn = self.con
            cur = conn.cursor()
            cur.execute(sql_query)
            cur.close()
            conn.commit()
            conn.close()
            print("Success: query run successfully : ",sql_query)
        except:
            cur.close()
            conn.rollback()
            conn.close()
            print("Error: commad failed : ",sql_query)

    def with_return_query(self,sql_query):
        try:
            conn = self.con
            cur = conn.cursor()
            cur.execute(sql_query)
            data = cur.fetchall()
            cur.close()
            conn.commit()
            conn.close()
            return data
        except:
            cur.close()
            conn.rollback()
            conn.close()
            print("Error: commad failed : ",sql_query)

    def execute_script(self,script_name):
        try:
            try:
                with open(script_name,'rb') as f:
                    scrit_data = f.read()
            except:
                print("Error: can't open file ",script_name)
            conn = self.con
            cur = conn.cursor()
            cur.executescript(scrit_data)
            cur.close()
            conn.commit()
            conn.close()
        except:
            cur.close()
            conn.rollback()
            conn.close()
            print("Error: commad failed : ",script_name)






if __name__ == "__main__":
    pass
