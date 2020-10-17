from app import app
from flask import render_template

@app.route('/')
def home():
   return "hello world!"

@app.route('/home')
def template():
    return render_template('home.html')