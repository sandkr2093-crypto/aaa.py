products = {'pen': 10, 'notebook': 50, 'eraser': 5, 'pencil': 7}
product_name = input("enter the product name")
if product_name in products:
    print("price of product",products[product_name])
else:
    print("product name is not found")
