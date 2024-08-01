import flask, sqlite3
from flask import Flask, make_response, send_file, request

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def ar():
    return make_response("Connected to Abbot Server", 200)


if __name__ == '__main__':
    print("RUNNING DEVELOPMENT SERVER")
    app.run(debug=False) # development server