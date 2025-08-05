class Hotelroom:
    def __init__(s,room_number,guest_name):
        s.room_number = room_number
        s.guest_name = guest_name
    def show(s):
        print("room number is",s.room_number)
        print("guest name is",s.guest_name)
    def __del__(s):
        print("room number 202 is available booking ended for anjali")
obj = Hotelroom(202,"Anjali")
obj.show()
del obj
        
