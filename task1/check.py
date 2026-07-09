#Write a program to check if a character is a vowel or consonant.
def check(s):
    vowels=['a','e','i','o','u']
    if len(s)==1 and s.isalpha():
        if s.lower() in vowels:
            print('Vowel')
        else:
            print('Consonant')
    else:
        print("Please enter a character.")
check("a")
check("V")
check("1234")
check("apple")
