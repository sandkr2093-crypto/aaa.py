Age = int(input("enter the age"))
ticket_price = 200
if Age>60:
    discount = ticket_price * 50/100
    print("discount is",discount)
    final_price = ticket_price - discount
    print("final price is",final_price)
else:
    print("no discount")
    print("final price is",ticket_price)
