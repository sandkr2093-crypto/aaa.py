class Payment:
    def pay(s):
        print("processing generic payment")
class Creditcard(Payment):
    def pay(s):
        print("Processing payment using Credit Card")
class Paypal(Payment):
    def pay(s):
        print("Processing payment using PayPal")
class UPI(Payment):
    
   def pay(s):
       print("Processing payment using UPI")
obj = Payment()
obj.pay()
obj = Creditcard()
obj.pay()
obj = Paypal()
obj.pay()
obj = UPI()
obj.pay()
