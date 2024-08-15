import subprocess, time, logging

# print("croc")
# a=subprocess.Popen(["sleep", "5"])
# print("trap")
# while a.poll() is None:
#     time.sleep(0.5)
#     print("waiting")
# print("croc trap")


logger = logging.getLogger(__name__)
logging.basicConfig(filename='download.log', level=logging.INFO)
logger.info("STARTED")
logger.error("croc trap")
# def wait_on_subprocess(p: subprocess.Popen):
#     while p.poll() is None:
#         time.sleep(2)
#     print(p.poll())
#     print(p.stderr)
#
# p = subprocess.Popen(["/home/avraham/anaconda3/envs/texas_env/bin/python3", "/home/avraham/MaruvkaLab/Texas/Abbot/Monk/stupid.py"])
# wait_on_subprocess(p)

# logger = logging.getLogger(__name__)
# logging.basicConfig(filename='download.log', level=logging.INFO)
# logger.info("STARTED")
# logger.error("croc trap")
FORMAT = '%(asctime)s %(message)s'
logging.basicConfig(filename='croc.log', level=logging.INFO, format=FORMAT)

# logging.basicConfig(format=FORMAT)
logger = logging.getLogger('croc')
logger.warning('Protocol problem: %s', 'croc reset')
