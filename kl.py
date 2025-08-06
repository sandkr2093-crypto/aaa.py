def calculate_gross_salary(basic_salary,house_rent_allowance,dearness_allowance):
    house_rent_allowance = basic_salary * house_rent_allowance
    dearness_allowance = basic_salary * dearness_allowance
    gross_salary = basic_salary +  house_rent_allowance + dearness_allowance
    return gross_salary
basic_salary = 58000
house_rent_allowance = 18/100
dearness_allowance = 19/100
gross_salary = calculate_gross_salary(basic_salary,house_rent_allowance,dearness_allowance)
print("gross salary is",gross_salary)
