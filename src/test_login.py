from upstox_api.api import Session
from sqlite3_wrapper import Table


class Login:
    def __init__(self,api_key,api_secret,redirect_uri):
        self.api_key = api_key
        self.api_secret = api_secret
        self.redirect_uri = redirect_uri
        self.upstox_session = Session(self.api_key)
        # login_details table
        self.login_details =''
        self.code = ''
        self.access_token = ''



    def set_table(self,database, table_name):
        self.dbname = database
        self.tblname = table_name
        self.login_details = Table(self.dbname,self.tblname)
        print(" Database and Table name set successfully")

    def get_code_from_db(self):
        self.code = self.login_details.get_single_value_from_single_column('code')


    def get_access_token_from_db(self):
        login_details = Table('test.db',self.tblname)
        self.access_token = login_details.get_single_value_from_single_column('access_token')
        


    def login_url(self):
        self.upstox_session.set_redirect_uri(self.redirect_uri)
        url = self.upstox_session.get_login_url()
        return url

    def get_code_from_api(self,login_url):
        # open browser and connect to flask app
        
        return self.code

    def set_code(self):
        self.upstox_session.set_code(self.code)
        print("Code set successfully")


    def get_access_token_from_api(self):
        self.access_token = self.upstox_session.retrieve_access_token()
        print("Access token set successfully")


    def login(self):
        pass