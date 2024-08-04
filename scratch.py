import requests, json, time
from uuid import getnode as get_mac

headers = {'accept': 'application/json'}

# ip ="127.0.0.1"
ip="127.0.0.1"


def request_worker_node():
    mac = str(get_mac())
    pa = {"worker_node_id": mac}
    img_req = requests.get(url=f"http://{ip}:8080/get_and_mark_sample/", json=pa, headers=headers)
    print(img_req.content)


def mark_as_completed():
    pa = {"sample_gdc_id": "bcdcc287-192c-41bd-9959-f163ab7a7938"}
    img_req = requests.get(url=f"http://{ip}:8080/mark_sample_as_complete/", json=pa, headers=headers)
    print(img_req.content)


mark_as_completed()
# samps = []
# while True:
#     time.sleep(random.random() * 0.15 + 0.85)
#     v=mark_and_select_from_samples(str(os.getpid()))
#     if v is None:
#         break
#     samps.append(v)
# print(samps)
