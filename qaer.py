Price = [150,120,160,250,240,230,358,347,458,451,468,589,520,544,678,744,855,945,1012]
for i in Price[:]:
    if i<=200:
        Price.remove(i)
print(Price)
