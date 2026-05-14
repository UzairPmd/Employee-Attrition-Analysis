#Write a program to check whether a number is divisible by both 5 and 11.
def divisible(num):
    return num%5==0 and num%11==0
print(divisible(11))
print(divisible(55))
