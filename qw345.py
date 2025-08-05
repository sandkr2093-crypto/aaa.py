class Vehicle:
    def move(s):
        print("Vehicle is moving")
class Car(Vehicle):
    def move(s):
        print("Car is driving on the road")
class Boat(Vehicle):
    def move(s):
        print("Boat is sailing on water")
class Airplane(Vehicle):
    def move(s):
        print("Airplane is flying in the sky")
obj = Vehicle()
obj.move()
obj = Car()
obj.move()
obj = Boat()
obj.move()
obj = Airplane()
obj.move()
