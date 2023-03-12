from PyQt5.QtWidgets import QApplication, QTableWidget, QTableWidgetItem
from PyQt5 import QtCore, QtGui, QtWidgets

import mysql.connector

db = mysql.connector.connect(
                host="localhost",
                user="root",
                password="root"
        )

mycursor = db.cursor()

app = QApplication([])

# Create a new QTableWidget with 3 rows and 4 columns
table_pageCustomers_customers = QTableWidget(3, 6)

# Hide the vertical header
table_pageCustomers_customers.verticalHeader().setVisible(False)

header_labels = ["Customer ID", "First Name", "Last Name", "Address", "Phone Number", "Gender"]
table_pageCustomers_customers.setHorizontalHeaderLabels(header_labels)
table_pageCustomers_customers.verticalHeader().setVisible(False)
table_pageCustomers_customers.setRowCount(0)

sql_data = mycursor.execute("SELECT * FROM poultry_management.customers;")

for row_number, row_data in enumerate(mycursor):
    table_pageCustomers_customers.insertRow(row_number)
    for column_number, data in enumerate(row_data):
        table_pageCustomers_customers.setItem(row_number, column_number, QtWidgets.QTableWidgetItem(str(data)))

# Show the table widget
table_pageCustomers_customers.show()

app.exec_()

