class Person:
    def __init__(s,name,age):
        s.name = name
        s.age = age
    def show(s):
        print("name is",s.name)
        print("age is",s.age)
class Student(Person):
    def __init__(s,name,age,grade):
        s.grade = grade
        super().__init__(name,age)
    def show(s):
        print("name is",s.name)
        print("age is",s.age)
        print("grade is",s.grade)
class Teacher(Person):
    def __init__(s,name,age,subject):
        s.subject = subject
        super().__init__(name,age)
    def show(s):
        print("name is",s.name)
        print("age is",s.age)
        print("subject is",s.subject)
obj = Teacher("Mr Kumar",40,"Mathematics")
obj.show()
obj = Student("Anjali",16,"10th")
obj.show()
   
