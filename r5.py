class Calculator:
    def add(s):
        print("sum is A+B")
class Printer:
    def print_doc(s):
        print("printing document")
class SmartDevice(Calculator,Printer):
    def show_features(s):
        print("This is a smart device with multiple features.")
obj = SmartDevice()
obj.show_features()
obj.print_doc()
obj.add()
