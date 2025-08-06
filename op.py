price = int(input("enter the price"))
if price>5000:
    discount = price*12/100
    print("discount is",discount)
    final_price = price - discount
    print("final price is",final_price)
else:
    print("no discount")
    print("final price is",price)
