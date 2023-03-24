# from PyQt5.QtWidgets import QApplication, QTableWidget, QTableWidgetItem
# from PyQt5 import QtCore, QtGui, QtWidgets
# from datetime import datetime
#
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
# mycursor.execute(f"SELECT first_name, last_name FROM poultry_management.staff;")
#
# # print([f'{i[0]} {i[1]}' for i in mycursor])
# import re
#
# email = "knl@x.fd"
# pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
# valid = bool(re.match(pattern, email))
#
# print(datetime.now().date())


import matplotlib.pyplot as plt
from PyQt5 import QtWidgets
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas


class MyGraph(QtWidgets.QMainWindow):
    def __init__(self):
        super().__init__()
        self.init_ui()

    def init_ui(self):
        # Create a figure and axis object
        fig, ax = plt.subplots()

        # Plot some data
        x = [1, 6, 3, 4, 5]
        y = [2, 4, 11, 8, 10]
        ax.plot(x, y)

        # Create a canvas and add the figure to it
        canvas = FigureCanvas(fig)
        self.setCentralWidget(canvas)

        self.show()


if __name__ == '__main__':
    app = QtWidgets.QApplication([])
    window = MyGraph()
    app.exec_()
