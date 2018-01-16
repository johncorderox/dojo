from flask import Flask, render_template, request, redirect, session
import random

app = Flask(__name__)
app.secret_key = "hello"

@app.route('/great')
def great():
    generated_number = random.randrange(0,101)
    session['num'] = generated_number
    print "number is SET"
    return render_template('/great.html', num = session['num'])

@app.route('/guess', methods=['POST'])
def guess():
    user = request.form['guess']
    if user > num:
        print "TOO BIG"
    else:
        print "TOO SMALLLL@@@"



app.run()
app.debug=True
