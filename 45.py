class Bank:
    def bank_details(s):
        s.account_number = int(input("enter the account number"))
        s.available_balance = int(input("enter the available balance"))
        s.deposit_amount = int(input("enter the deposit amount"))
        s.withdraw_amount = int(input("enter the withdraw amount"))
    def show(s):
        print("account number is",s.account_number)
        print("available balance is",s.available_balance)
        print("deposit amount is",s.deposit_amount)
        print("withdraw amount is",s.withdraw_amount)
        total_balance = s.available_balance + s.deposit_amount
        print("total balance is",total_balance)
        remaining_balance = total_balance - s.withdraw_amount
        print("remaining balance is",remaining_balance)
obj = Bank()
obj.bank_details()
obj.show()
