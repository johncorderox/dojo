from flask import Flask, render_template, request, redirect, session
import random

app = Flask(__name__)
app.secret_key = "hello"

@app.route('/great')
def great():
    generated_number = random.randrange(0,101)
    session['num'] = generated_number
    print session['num']
    return render_template('/great.html', num = session['num'])
app.run()
app.debug=True
