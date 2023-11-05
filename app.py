from flask import Flask, request, jsonify
from square import square

app = Flask(__name__)

@app.route('/square', methods=['POST'])
def get_square():
    data = request.get_json()
    num = data.get('number',0)
    return jsonify(result=square(num))

if __name__ == '__main__':
    app.run(host="0.0.0.0",port=5000)