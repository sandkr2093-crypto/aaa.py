class Student:
    def student_details(s):
        s.name = input("enter the name")
        s.marks1  =int(input("enter the marks1"))
        s.marks2 = int(input("enter the marks2"))
        s.marks3 = int(input("enter the marks3"))
    def show(s):
        print("name is",s.name)
        print("marks1 is",s.marks1)
        print("marks2 is",s.marks2)
        print("marks3 is",s.marks3)
        total_marks = s.marks1 + s.marks2 + s.marks3
        print("total marks is",total_marks)
        average_marks = total_marks / 3
        print("average marks is",average_marks)
obj= Student()
obj.student_details()
obj.show()
