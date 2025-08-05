class Person:
    def person_details(s):
        print("name is John")
        print("age is 25")
class Student(Person):
    def student_details(s):
        print("studentID is 101")
obj = Student()
obj.student_details()
obj.person_details()
