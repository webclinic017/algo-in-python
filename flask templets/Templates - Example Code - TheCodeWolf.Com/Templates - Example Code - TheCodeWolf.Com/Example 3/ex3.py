# helloworld.py
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
  username = "sam01"
  family_list = ['mom', 'dad', 'sister', 'brohter']
  family_dict = { 'mom':40, 'dad':45, 'sister': 18, 'brother': 12 }
  return render_template('index.html', username=username, family_list=family_list, family_dict=family_dict)

if __name__ == '__main__':
	app.run(debug=True)
