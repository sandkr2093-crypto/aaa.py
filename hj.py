class Employee:
    def calculate_salary(s):
        print("Calculating generic employee salary")
class Manager(Employee):
    def calculate_salary(s):
        print("Manager salary = Base + Bonus")
class Developer(Employee):
    def calculate_salary(s):
        print("Developer salary = Base + Overtime")
class Intern(Employee):
    def calculate_salary(s):
        print("Intern salary = Stipend only")
obj = Employee()
obj.calculate_salary()
obj = Manager()
obj.calculate_salary()
obj = Developer()
obj.calculate_salary()
obj = Intern()
obj.calculate_salary()
        
