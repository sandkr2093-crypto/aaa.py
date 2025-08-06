Employees = {"Name":"Alok","Age":45,"Dept":"IT","Salary":38000,"City":"Gurugram"}
for  i in Employees:
    print(i)
    print(Employees[i])
print(Employees.keys())
print(Employees.values())
print(Employees.items())
Employees.update({"Dept":"Sales"})
print(Employees)
print(Employees.pop("Age"))
print(Employees.clear())
