class Person:
    def __init__(s,name):
        s.name = name
    def show(s):
        print("name is",s.name)
class Skill:
    def __init__(s,programming_language):
        s.programming_language = programming_language
    def show(s):
        print("programming language is",s.programming_language)
class Developer(Person,Skill):
    def __init__(s,name,programming_language):
        Person.__init__(s,name)
        Skill.__init__(s,programming_language)
    def show(s):
        print("name is",s.name)
        print("programming language is",s.programming_language)
obj = Developer("Rajesh","Java")
obj.show()
