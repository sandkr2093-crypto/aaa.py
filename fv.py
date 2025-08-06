units = int(input("enter the electricity units consumed"))
if units<=100:
    bill = units * 5
    print("bill is",bill)
elif units<=300:
    bill = units * 7
    print("bill is",bill)
else:
    bill = units * 10
    print("bill is",bill)
