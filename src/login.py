from upstox_api.api import Session
import json
from sqlite3_wrapper import Table

with open("config.json",'r') as f:
	param = json.load(f)['param']

if __name__ == "__main__":
	login = Session(param['api_key'])

	login.set_api_secret(param['api_secret'])
	login.set_redirect_uri(param['redirect_uri'])
	login.set_code(param['code'])

	login_url = login.get_login_url()
	print(login_url)
	# flask app here to get access token
	# access_token = login.retrieve_access_token()
	print(login_url)

login_details = Table('./db/test.db','login_details')
login_details.upade_data({'api_key':'api_key','api_secret':'api_secret','public_token':'253'},{})