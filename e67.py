def calculate_simple_interest(principal_amount,interest_rate,time_period):
    simple_interest = (principal_amount * interest_rate * time_period) / 100
    return simple_interest
principal_amount = int(input("enter the principal amount"))
interest_rate = int(input("enter the interest rate"))
time_period = int(input("enter the time period"))
simple_interest = calculate_simple_interest(principal_amount,interest_rate,time_period)
print("simple interest is",simple_interest)
