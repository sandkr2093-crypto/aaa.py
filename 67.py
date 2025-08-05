class Bankaccount:
    def Bankaccount_details(s):
        s.account_number = int(input("enter the account number"))
        s.balance = int(input("enter the balance"))
    def show(s):
        print("account number is",s.account_number)
        print("balance is",s.balance)
    def __del__(s):
        print("data is deleted")
obj = Bankaccount()
obj.Bankaccount_details()
obj.show()
del obj
