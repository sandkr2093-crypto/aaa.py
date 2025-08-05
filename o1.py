class Animal:
    def sound(s):
        print("animal makes sound")
class Dog(Animal):
    def bark(s):
        print("dog barks")
class Cat(Animal):
    def meow(s):
        print("cat meows")
obj = Cat()
obj.meow()
obj.sound()
obj = Dog()
obj.bark()
