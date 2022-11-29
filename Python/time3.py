import schedule
import time

def job(t):
    exec(open('nodedowngrade.py').read())
    print ("Zerando nodes"), t
    return

schedule.every().day.at("21:00").do(job,'It is 18:00')

while True:
    schedule.run_pending()
    time.sleep(60)