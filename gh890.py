Employees = {101:50000,102:60000,103:55000,104:70000,105:65000}
empID = int(input("enter the empID"))
if empID in Employees:
    print("Salary of employee",Employees[empID])
else:
    print("empID not found")
