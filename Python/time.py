import schedule
import time
  
def func():
    exec(open('security.py').read())
  
schedule.every(10).minutes.do(func)
  
while True:
    schedule.run_pending()
    time.sleep(60)