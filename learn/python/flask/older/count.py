from flask import Flask, render_template, request, redirect, session
app = Flask(__name__)
app.secret_key = "hello"
@app.route('/count')
def index():
    session['count'] += 1
    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    print session['count']
    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    return render_template('count.html', webcount = session['count'])

@app.route('/count2', methods=["POST"])
def count():
    session['count'] += 2
    print session['count']
    return render_template('count.html', webcount = session['count'])
@app.route('/reset', methods=['POST'])
def reset():
    session['count'] = 0
    return render_template('count.html', webcount = session['count'])
app.run()
app.debug=True


##
<h1> Counter</h1>
{{webcount}}

<form action="/count2" method="POST">
  <button>Add 2</button>
</form>
<form action="/reset" method="post">
  <button>Reset Counter</button>
</form>
##
