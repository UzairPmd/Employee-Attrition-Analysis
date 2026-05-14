#Write a program to calculate the sum of first N natural numbers using a while loop.
def sum_of_natural(n):
    total = 0
    while n > 0:
        total += n
        n -= 1 
    return total
print(sum_of_natural(5))   
print(sum_of_natural(10))  
