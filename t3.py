item = int(input("enter the item"))
price_per_item= 300
total_price = item * price_per_item
if item>10:
    discount = total_price * 50/100
    print("discount is",discount)
    final_price = total_price - discount
    print("final price is",final_price)
else:
    print("no discount")
    print("final price is",total_price)
