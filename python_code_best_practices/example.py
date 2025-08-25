def add(x,y):return x+y
def multiply(x , y): return x*y
def divide(x,y):return x / y if y!=0 else None
numbers=[1,2,3,4,5]
result=[]
for n in numbers:result.append(add(n,2));result.append(multiply(n,3));result.append(divide(n,2))

print("Results:",result)
