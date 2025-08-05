class Employee:
    def __init__(s,name,salary):
        s.name = name
        s.__salary = salary
    def show(s):
        print("name is",s.name)
        print("salary is",s.__salary)
obj = Employee("Neha",50000)
obj.salary = 60000
obj.show()
