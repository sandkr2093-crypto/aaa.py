prices = [100,150,160,150,135,250,268,245,358,365,312,485,471,458,596,582,541,658,698,785,748,851,896,841,945,978,966,1012,1015,1018]
a = 0
b = 0
c = 0
d = 0
e = 0
f = 0
g = 0
h = 0
for i in prices:
    if i>=100 and i<=200:
        a = a+1
    elif i>=201 and i<=300:
        b = b+1
    elif i>= 301 and i<=400:
        c = c+1
    elif i>= 401 and i<=500:
        d = d+1
    elif i>=501 and i<=600:
        e = e+1
    elif i>= 601 and i<= 700:
        f = f+1
    elif i>= 701 and i<= 800:
        g = g+1
    else:
        h = h+1
print("prices from 100 to 200 is",a)
print("prices from 201 to 300 is",b)
print("prices from 301 to 400 is",c)
print("prices from 401 to 500 is",d)
print("prices from 501 to 600 is",e)
print("prices from 601 to 700 is",f)
print("prices from 701 to 800 is",g)
print("prices from 800 above is",h)
