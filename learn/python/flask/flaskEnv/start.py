from flask import Flask, render_template, request, redirect
app = Flask(__name__)
@app.route('/')
def index():
    return render_template('index.html')
@app.route('/ninjas')
def ninjas():
    ninjasarr = ["Leonardo", "Michelangelo", "Raphael", "Donatello"]
    return render_template('ninja.html')

app.run()
app.debug=True
