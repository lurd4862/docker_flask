# from app import app
# from flask import Flask
# from flask import render_template

# app = Flask(__name__)

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)