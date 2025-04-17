from flask import Flask, request, Response
from datetime import datetime
import json

app = Flask(__name__)

@app.route('/')
def index():
    data = {
        "timestamp": datetime.utcnow().isoformat() + "Z",
        "ip": request.remote_addr
    }
    response = Response(
        json.dumps(data, indent=2),  # pretty print with indent
        mimetype='application/json'
    )
    return response

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
