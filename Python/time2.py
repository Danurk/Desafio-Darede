import schedule
import time

def job(t):
    exec(open('nodeupgrade.py').read())
    print ("Subindo Nodes"), t
    return

schedule.every().day.at("12:00").do(job,'It is 09:00')

while True:
    schedule.run_pending()
    time.sleep(60)