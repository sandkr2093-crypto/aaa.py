class Person:
    def __init__(s,name,age):
        s.name = name
        s.age = age
    def show(s):
        print("name is",s.name)
        print("age is",s.age)
class Salary:
    def __init__(s,salary):
        s.salary = salary
    def show(s):
        print("salary is",s.salary)
class Employee(Person,Salary):
    def __init__(s,name,age,salary,EmpID):
        s.EmpID = EmpID
        Person.__init__(s,name,age)
        Salary.__init__(s,salary)
    def show(s):
        print("name is",s.name)
        print("age is",s.age)
        print("salary is",s.salary)
obj = Employee("Anjali",28,55000,"E205")
obj.show()
