class Vehicle:
    def __init__(s,model,speed):
        s.model = model
        s.__speed = speed
    def show(s):
        print("model is",s.model)
        print("speed is",s.__speed)
obj = Vehicle("Hyundai i20",85)
obj.speed = 65
obj.show()
