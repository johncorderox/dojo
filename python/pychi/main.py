# test script
from flask import Flask
from flask import render_template
app = Flask(__name__)

@app.route('/')

def hello_world():

    return render_template("index.html", name="John")

@app.route('/process', methods = ['POST', 'GET'])

def result():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        return render_template("index.html")


if __name__ == '__main__':
    app.run()
    app.debug = True
