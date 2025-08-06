Age = [18,16,22,24,36,34,48,58,59,65,74,81,95,90]
min = Age.index(min(Age))
max = Age.index(max(Age))
temp = Age[min]
Age[min] = Age[max]
Age[max] = temp
print(Age)




price = [150,128,145,158,215,214,356,389,485,589]
min = price.index(min(price))
max = price.index(max(price))
temp = price[min]
price[min] = price[max]
price[max] = temp
print(price)
