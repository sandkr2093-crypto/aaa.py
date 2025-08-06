n = int(input("enter the number"))
for number in range(30,n+1):
    if number>1:
        for i in range(2,number):
            if number%i==0:
                break
        else:
            print(number,end =" ")
