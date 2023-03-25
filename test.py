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

mycursor.execute(f"SELECT breed_type, batch_number FROM poultry_management.batchnumber;")

print([f'{i[0]} {i[1]}' for i in mycursor])
