class Person:
   def person_details(s):
       print("name is Mohan")
       print("age is 45")
class Employee(Person):
    def Employee_details(s):
        print("name is Suresh")
        print("EmpID is 101")
        
class Manager(Employee):
    def manager_details(s):
        print("name is Alice")
        print("Dept is HR")
obj = Manager()
obj.manager_details()
obj.Employee_details()
obj.person_details()
