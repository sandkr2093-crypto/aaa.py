cities = {'Delhi': 110001, 'Mumbai': 400001, 'Chennai': 600001, 'Kolkata': 700001}
city = input("enter the city")
if city in cities:
    print("pincode of city",cities[city])
else:
    print("city not found")
