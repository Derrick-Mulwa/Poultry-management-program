from PyQt5.QtWidgets import QApplication, QTableWidget, QTableWidgetItem
from PyQt5 import QtCore, QtGui, QtWidgets
from datetime import datetime

import mysql.connector

db = mysql.connector.connect(
                host="localhost",
                user="root",
                password="root"
        )

mycursor = db.cursor()

from datetime import datetime, timedelta



now = datetime.now()

mycursor.execute(f"SELECT SUM(total) FROM poultry_management.batchflock WHERE date > '{now.year}-{now.month}-01';")
this_month = [i for i in mycursor][0][0]
try:
    month_total = format('{:,}'.format(this_month))
except:
    month_total = this_month


mycursor.execute(f"SELECT SUM(total) FROM poultry_management.batchflock WHERE date > '{now.date()}';")
today_total = [i for i in mycursor][0][0]
try:
    today_total = format('{:,}'.format(today_total))
except:
    today_total = today_total

print(f'{today_total}')
print(f'{month_total}')



