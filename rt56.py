try:
    
    X = int(input("enter the first number"))
    Y = int(input("enter the second number"))
    Z = X/Y
    print(Z)
except ZeroDivisionError:
    print("cannot divide by zero")
W = int(input("enter the first number"))
C = int(input("enter the second number"))
B = W*C
print(B)
