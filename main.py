from flask import Flask, request
from urllib.parse import urlencode
import json
import logging

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s %(levelname)s [%(name)s] [%(filename)s:%(lineno)d] - %(message)s"
)
app = Flask(__name__)

@app.route("/test", methods=["GET", "POST"])
def api_test():
    return 'hello!!!!', 200


@app.route("/echo", methods=["POST"])
def api_echo():
    data = json.loads(request.data)
    logging.info(data)
    return data
