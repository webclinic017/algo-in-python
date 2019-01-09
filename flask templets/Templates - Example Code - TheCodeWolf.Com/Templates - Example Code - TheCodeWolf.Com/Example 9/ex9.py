from flask import Flask, render_template
from flask_bootstrap import Bootstrap

app = Flask(__name__)
bootstrap = Bootstrap(app)

@app.route('/')
def index():
	return render_template('index.html')

@app.route('/channel/<username>')
def channel(username):
	return render_template('channel.html', username=username)

if __name__ == '__main__':
	app.run(debug=True)
