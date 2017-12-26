# test script
from flask import Flask
from flask import render_template
app = Flask(__name__)

@app.route('/')

def hello_world():
    title = "MySQL Table Scripts"
    desc  = "A sql script generator to save time"

    html = """

            <html>
            <h1>{{title}} </h1>
            <p>{{desc}}</p>
            </html>

    """

    return html

@app.route('/users')

def show_users():
    return 'John Cordero  johncorderox@gmail.com'

if __name__ == '__main__':
    app.run()
    app.debug = True
