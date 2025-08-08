electricity_bill_units = int(input("enter the electricity bill units"))
if electricity_bill_units<=100:
    print("Free")
elif electricity_bill_units>100 and electricity_bill_units<=300:
    total_bill = electricity_bill_units * 2
    print("total bill is",total_bill)
else:
    total_bill = electricity_bill_units * 5
    print("total bill is",total_bill)
