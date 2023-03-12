from PyQt5.QtWidgets import QLabel, QApplication

app = QApplication([])
label = QLabel("Transparent Label")
label.setStyleSheet("background-color: rgba(0,0,0,0);")
label.show()
app.exec_()
