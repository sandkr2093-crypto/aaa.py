students = {201: 88, 202: 76, 203: 90, 204: 67}
roll = int(input("enter the roll"))
if roll in students:
    print("Marks of student",students[roll])
else:
    print("roll not found")
