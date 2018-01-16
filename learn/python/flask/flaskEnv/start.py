from flask import Flask, render_template, request, redirect, session, flash
import random
import re

app = Flask(__name__)
app.secret_key = "hello"

NUMBER_REGEX = re.compile(r'^[-+]?([1-9]\d*|0)$')

@app.route('/register')
def normal():
    return render_template('register.html')

@app.route('/process', methods=["POST"])
def index():
    if request.method== "POST":
        email = request.form['email']
        first_name = request.form['first_name']
        last_name = request.form['last_name']
        password = request.form['password']
        confirm_password = request.form['confirm_password']

        ## All fields are required and must not be blank

        if (len(email) == 0 or len(first_name) == 0 or len(last_name) == 0 or len(password) == 0 or len(confirm_password) == 0):
            flash("All fields are required and must not be blank")

        ## First and Last Name cannot contain any numbers
    ##    elif not(NUMBER_REGEX.match(first_name) or NUMBER_REGEX.match(last_name)):
        ##    flash("First and Last Name cannot contain any numbers")
    return redirect('/register')
app.run()
app.debug=True
