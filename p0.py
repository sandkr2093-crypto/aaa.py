class ATM:
    def __init__(s,card_holder,pin):
        s.card_holder = card_holder
        s.__pin = pin
    def show(s):
        print("card holder is",s.card_holder)
        print("pin is",s.__pin)
obj = ATM("Ravi kumar",1234)
obj.pin = 9999
obj.show()
