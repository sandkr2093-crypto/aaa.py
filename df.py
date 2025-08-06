month_name = input("enter the month name")
if month_name in ("January","March","May","July","August","October","December"):
    print("number of days = 31")
elif month_name in ("April","June","September","November"):
    print("number of days = 30")
elif month_name == "February":
    print("number of days = 28")
else:
    print("enter the valid month name")
