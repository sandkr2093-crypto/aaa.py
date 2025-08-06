price = [150,166,144,212,215,265,389,478,589]
min = price.index(min(price))
max = price.index(max(price))
temp = price[min]
price[min] = price[max]
price[max] = temp
print(price)
