cost_price = int(input("enter the cost price"))
selling_price = int(input("enter the selling price"))
if cost_price>selling_price:
    print("profit of",selling_price - cost_price)
elif selling_price>cost_price:
    print("loss of",cost_price - selling_price)
else:
    print("no profit no loss")
