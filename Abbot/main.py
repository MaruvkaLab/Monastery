import json
from flask import Flask, make_response, send_file, request
from Abbot.db_utils import get_db_path, mark_and_select_from_samples, mark_sample_as_completed

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def ar():
    return make_response("Connected to Abbot Server", 200)


@app.route('/get_and_mark_sample/', methods=['GET', 'POST'])
def ar_get_and_mark_sample():
    json_form = request.json
    worker_node_id = json_form["worker_node_id"]
    maximum_size = int(json_form["max_size"])
    sample_id, is_female = mark_and_select_from_samples(worker_node_id, maximum_size)
    if sample_id is None:
        return make_response(f"", 200)
    else:
        return make_response(f"{json.dumps({'sample_uuid': sample_id, 'is_female': is_female})}", 200)


@app.route('/full_sqlite_db_file/', methods=['GET', 'POST'])
def ar_full_sqlite_db_file():
    sqlite_db_path = get_db_path()
    return send_file(sqlite_db_path)


@app.route('/mark_sample_as_complete/', methods=['GET', 'POST'])
def ar_mark_sample_as_complete():
    json_form = request.json
    sample_gdc_id = json_form["sample_gdc_id"]
    mark_sample_as_completed(sample_gdc_id)
    return make_response("Marked as completed", 200)


if __name__ == '__main__':
    print("RUNNING DEVELOPMENT SERVER")
    app.run(debug=False) # development server
