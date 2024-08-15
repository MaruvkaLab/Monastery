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
