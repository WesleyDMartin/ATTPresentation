import os
from flask import Flask
from flask import render_template
app = Flask(__name__, template_folder='./templates')

@app.route('/')
def hello_world():
	name = os.environ.get("MAIN_TEXT")
	color = os.environ.get("COLOR")
	print(color)
	print(name)
	return render_template('index.html', name=name, color=color)