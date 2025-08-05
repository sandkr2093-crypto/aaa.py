class Person:
    def __init__(s,name,age):
        s.name = name
        s.age = age
    def show(s):
        print("name is",s.name)
        print("age is",s.age)
class Student(Person):
    def __init__(s,name,age,studentID):
        s.studentID = studentID
        super().__init__(name,age)
    def show(s):
        print("name is",s.name)
        print("age is",s.age)
        print("studentID is",s.studentID)
obj = Student("Alice",25,101)
obj.show()
