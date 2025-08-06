def calculate_compound_interest(principal_amount,interest_rate,time_period,n=1):
     amount = principal_amount * (1 + interest_rate / n) ** (n * time_period)
     compound_interest = amount - principal_amount
     return compound_interest
principal_amount = int(input("enter the principal amount"))
interest_rate = int(input("enter the interest rate"))
time_period = int(input("enter the the time period"))
compound_interest = calculate_compound_interest(principal_amount,interest_rate,time_period,n=1)
print("compound interest is",compound_interest)
                                
