from flask import Flask, render_template, request, redirect, session
app = Flask(__name__)
app.secret_key = "hello"
@app.route('/')
def index():
    count = 50
    session['count'] = count
    print session['count']
    return render_template('index.html')



app.run()
app.debug=True
