Get an access token
Import Upstox
from upstox_api.api import *
Create a Session object with your api_key, redirect_uri and api_secret
s = Session ('your_api_key')
s.set_redirect_uri ('your_redirect_uri')
s.set_api_secret ('your_api_secret')
Get the login URL so you can login with your Upstox UCC ID and password.
print (s.get_login_url())
## this will return a URL such as https://api.upstox.com/index/dialog/authorize?apiKey={your_api_key}&redirect_uri={your_redirect_uri}&response_type=code
Login to the URL and set the code returned by the login response in your Session object
s.set_code ('your_code_from_login_response')
Retrieve your access token
access_token = s.retrieve_access_token()
print ('Received access_token: %s' % access_token)
Establish a session
Once you have your access_token, you can create an Upstox object with your access_token and api_key.
u = Upstox ('your_api_key', access_token)
You can run commands here to check your connectivity
print (u.get_balance()) # get balance / margin limits
print (u.get_profile()) # get profile
print (u.get_holdings()) # get holdings
print (u.get_positions()) # get positions