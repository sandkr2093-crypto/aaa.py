Age = [16,18,20,22,16,24,5,6,8,21,80,85,91]
a = 0
b = 0
c = 0
d = 0
for i in Age:
    if i>=1 and i<=15:
        a =a+1
    elif i>=16 and i<=30:
        b = b+1
    elif i>=31 and i<=60:
        c = c+1
    else:
        d = d+1
print("age from 1 to 15 is",a)
print("age from 16 to 30 is",b)
print("age from 31 to 60 is",c)
print("age from 60 above is",d)
