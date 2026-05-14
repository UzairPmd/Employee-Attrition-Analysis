def  largest(a,b,c):
    largest_num= a if a>b and a>c else b if b>a and b>c else c
    return largest_num
print(largest(100,10,4))