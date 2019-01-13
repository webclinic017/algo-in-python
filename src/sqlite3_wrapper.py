import sqlite3 as sql


class Db:
    def __init__(self,dbname):
        
        self.dbname = dbname

    def without_return_query(self,sql_query):
        try:
            conn = sql.connect(self.dbname)
            cur = conn.cursor()
            cur.execute(sql_query)
            cur.close()
            conn.commit()
            conn.close()
        except:
            cur.close()
            conn.rollback()
            conn.close()
            print("Error: commad failed : ",sql_query)

    def with_return_query(self,sql_query):
        try:
            conn = sql.connect(self.dbname)
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
            conn = sql.connect(self.dbname)
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


class Table:
	import sqlite3 as sql
	def __init__(self,dbname,table_name):
		self.dbname = dbname
		self.tblname = table_name

	def get_single_value_from_single_column(self,column_name):
		conn = sql.connect(self.dbname)
		cur = conn.cursor()
		cur.execute("select {} from {} ".format(column_name,self.tblname))
		data = cur.fetchone()
		cur.close()
		conn.close()
		return data[0]



	def list_table_names(self):
		conn = sql.connect(self.dbname)
		cur = conn.cursor()
		cur.execute("select name from sqlite_master where type = \'table\'")
		tables_name = cur.fetchall()
		cur.close()
		conn.close()
		return tables_name


	def test_tables(self,):
		
		tables = self.list_table_names()
		for table in tables:
			conn = sql.connect(self.dbname)
			cur = conn.cursor()
			tbl,  = table
			print(tbl)
			cur.execute("select * from "+ tbl)
			data = cur.fetchone()
			cur.close()
			conn.close()
			print("From table-- {} : ".format(tbl) , data)




	def return_all_data(self):
	    conn = sql.connect(self.dbname)
	    cur = conn.cursor()
	    cur.execute('select * from '+ self.tblname)
	    data = cur.fetchall()
	    cur.close()
	    conn.close()
	    return data


	def show_all_data(self):
	    conn = sql.connect(self.dbname)
	    cur = conn.cursor()
	    cur.execute('select * from '+ self.tblname)
	    data = cur.fetchall()
	    cur.close()
	    conn.close()
	    print(data)

	def insert_datas(self,rows_as_list_of_tuple):
		conn = sql.connect(self.tblname)
		cur = conn.cursor()
		values = ' , '.join(map(str,rows_as_list_of_tuple))
		print("insert_datas   rows_value : ", values)
		sqlsmt = "insert into {} (dates, price) values {}".format(self.tblname,values)
		print(sqlsmt)
		cur.execute(sqlsmt)
		cur.close()
		conn.close()
		print("Data inserted successfully")


	def insert_And_Udate_Data(self,rows_as_list_of_tuple):
		""" it is safe """
		i = 0
		for data in rows_as_list_of_tuple:
			i +=1 
			try:
				conn = sql.connect(self.dbname)
				cur = conn.cursor()
				# values =' , '.join(map(str,rows))
				sqlsmt = "insert into {} (dates, price) values {}".format(self.tblname,data)
				print(sqlsmt)
				cur.execute(sqlsmt)
				cur.close()
				conn.commit()
				conn.close()
				print(i,' -> Data inserted successfully')
			except:
				cur.close()
				conn.commit()
				conn.close()
				print(i,' -> Data already exists !')

	def data_filter_by(self,param_as_dict):
		conn = sql.connect(self.dbname)
		cur = conn.cursor()
		stmt = "select * from {} where ".format(self.tblname)
		st =''
		for key, value in param_as_dict.items():
			val = str(value)
			st += key + " = " + "\'" + val + "\'" + " and "
		ss = stmt + st
		sql_cmd = ss[:-5]
		cur.execute(sql_cmd)
		data = cur.fetchall()
		cur.close()
		conn.commit()
		conn.close()
		return data


		
	def data_delete_by(self,param_as_dict):
		conn = sql.connect(self.dbname)
		cur = conn.cursor()
		if len(param_as_dict) != 0:
			stmt = "delete from {} where ".format(self.tblname)
			st=''
			for key, value in param_as_dict.items():
				val = str(value)
				st += key + " = " + "\'" + val + "\'" + " and "
			ss=stmt +st
			sql_cmd = ss[:-5]
			cur.execute(sql_cmd)
			cur.close()
			conn.commit()
			conn.close()
			print(" Data delete successfully")
		else:
			print("Error : values must be passed as dict ")

	def upade_data(self,data_as_dict,condition_as_dict):
		"""update tbl set col1 = val1 , col2=val2 where con1 =param1 and con2= param2"""
		s1 = "update {} set ".format(self.tblname)
		s2 =''
		for key, value in data_as_dict.items():
			val = str(value)
			s2 += key + " = " + "\'" + val + "\'" + ' , '
		s2 = s2[:-2]
		if len(condition_as_dict) != 0:	
			s3 = ' where '
			s4 = ''
			for key , value in condition_as_dict.items():
				val = str(value)
				s4 += key + " = " + "\'" + val + "\'" + ' and '
			s4 = s4[:-4]
			sql_cmd = s1 + s2 + s3 + s4
		else:
			sql_cmd = s1 + s2
		conn = sql.connect(self.dbname)
		cur = conn.cursor()
		try:
			cur.execute(sql_cmd)
			cur.close()
			conn.commit()
			conn.close()
			print("Data Updated Successfully")
		except:
			cur.close()
			conn.close()
			print("Error : Data update failed !")







if __name__ == "__main__":
	price = Table('./db/test.db','login_details')

	# price.show_all_data()
	# print("*"*50)
	# print(price.return_all_data())
	# price.return_all_data()


	# print(price.data_filter_by({"price":266}))

	# price.data_delete_by({"id":"5"})

	print(price.list_table_names())
	print('*'*50)
	price.test_tables()
	print("$"*25)
	price.get_single_value_from_single_column('api_key')