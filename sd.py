class Patient:
    def Patient_details(s):
        s.name = input("enter the name")
        s.age = int(input("enter the age"))
        s.__disease = input("enter the disease")
    def show(s):
        print("name is",s.name)
        print("age is",s.age)
        print("disease is",s.__disease)
obj = Patient()
obj.Patient_details()
obj.disease = "Hypertension"
obj.show()
