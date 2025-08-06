d = {"Name":"Suresh","Age":30,"Dept":"Finance","Salary":55000,"City":"Pune"}
for i in d:
    print(i)
    print(d[i])
print(d.keys())
print(d.values())
print(d.items())
d.update({"City":"Noida"})
print(d)
print(d.pop("Age"))
print(d.clear())
print(d["Name"])
