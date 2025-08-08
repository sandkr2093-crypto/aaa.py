try:
    a = int(input("Enter first number: "))
    b = int(input("Enter second number: "))
    result = a / b
    print("Division result:", result)

    data = [1, 2, 3]
    print("Accessing 5th element:", data[4])

except ZeroDivisionError:
    print("Error: Division by zero is not allowed!")
except IndexError:
    print("Error: Index out of range!")
