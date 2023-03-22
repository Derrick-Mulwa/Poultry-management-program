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

mycursor.execute(f"SELECT first_name, last_name FROM poultry_management.staff;")

# print([f'{i[0]} {i[1]}' for i in mycursor])
import re

email = "knl@x.fd"
pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
valid = bool(re.match(pattern, email))

print(datetime.now().date())

