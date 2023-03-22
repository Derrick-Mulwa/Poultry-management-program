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

mycursor.execute(f"SELECT category_name FROM poultry_management.expense_category;")

print([i[0] for i in mycursor])

