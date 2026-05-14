#Write a program to print the multiplication table of a given number using a while loop.
def multi_table(n):
    i=1
    while i<11:
        print(f"{n}*{i}={n*i}")
        i+=1
multi_table(5)
multi_table(21)
