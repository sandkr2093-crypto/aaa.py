class Vehicle:
    def __init__(s,brand):
        s.brand = brand
    def show(s):
        print("brand is",s.brand)
class Car(Vehicle):
    def __init__(s,brand,model):
        s.model = model
        super().__init__(brand)
    def show(s):
        print("model is",s.model)
class Electric_car(Car):
    def __init__(s,brand,model,battery_capacity):
        s.battery_capacity = battery_capacity
        super().__init__(brand,model)
    def show(s):
        print("brand is",s.brand)
        print("model is",s.model)
        print("battery capacity is",s.battery_capacity)
obj = Electric_car("Tesla","model 3",75)
obj.show()
