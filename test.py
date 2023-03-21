from PyQt5.QtWidgets import QApplication, QTableWidget, QTableWidgetItem
from PyQt5 import QtCore, QtGui, QtWidgets
from datetime import datetime

# import mysql.connector
#
# db = mysql.connector.connect(
#                 host="localhost",
#                 user="root",
#                 password="root"
#         )
#
# mycursor = db.cursor()
#
# mycursor.execute(f"SELECT first_name, last_name FROM poultry_management.customers;")
#
# print([f"{i[0]} {i[1]}" for i in mycursor])

from PyQt5.QtWidgets import QApplication, QTableWidget, QTableWidgetItem

app = QApplication([])
table = QTableWidget()

# create table with 3 rows and 2 columns
table.setRowCount(3)
table.setColumnCount(2)

# set data for the first cell
item = QTableWidgetItem("hello")
table.setItem(0, 0, item)

# create a slot to handle the itemChanged signal
def handle_item_changed(item):
    row = item.row()
    col = item.column()
    new_text = item.text()
    print(f"Cell ({row}, {col}) changed to {new_text}")

# connect the itemChanged signal to the handle_item_changed slot
table.itemChanged.connect(handle_item_changed)

table.show()
app.exec_()
