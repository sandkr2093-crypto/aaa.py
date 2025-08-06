a = int(input("enter the side1"))
b= int(input("enter the side2"))
c = int(input("enter the side3"))
if a==b==c:
    print("Equilateral triangle")
elif a==b or b==c or c==a:
    print("Isosceles triangle")
else:
    print("scalene triangle")
