# test script
from flask import Flask
app = Flask(__name__)

@app.route('/')

def hello_world():
    return 'This is the / route'


@app.route('/users')

def show_users():
    return 'John Cordero  johncorderox@gmail.com'

if __name__ == '__main__':
    app.run()
    app.debug = True
