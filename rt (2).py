class Bank:
    def bank_details(s):
        s.account_number = int(input("enter the account number"))
        s.__available_balance = int(input("enter the available_balance"))
        s.__deposit_amount = int(input("enter the deposit amount"))
        s.__withdraw_amount = int(input("enter the withdraw amount"))
    def show(s):
        print("account number is",s.account_number)
        print("available balance is",s.__available_balance)
        print("deposit amount is",s.__deposit_amount)
        print("withdraw amount is",s.__withdraw_amount)
        total_balance = s.__available_balance + s.__deposit_amount
        print("total balance is",total_balance)
        remaining_balance = total_balance - s.__withdraw_amount
        print("remaining balance is",remaining_balance)
obj = Bank()
obj.bank_details()
obj.available_balance = 35000
obj.deposit_amount = 15000
obj.withdraw_amount = 20000
obj.show()
