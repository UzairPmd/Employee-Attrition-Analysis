"""Print:
1
12
123
1234
12345"""
def num_pyramid(rows):
    for i in range(1, rows+1):        
        for j in range(1, i+1):       
            print(j, end=" ")         
        print()                       
num_pyramid(5)
