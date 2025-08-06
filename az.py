def prime_number(n):
    for number in range(1,n+1):
        if number>1:
            for  i in range(2,number):
                if number%2==0:
                    break
            else:
                print(number,end = " ")
n= int(input("enter the number"))
prime_number(n)
