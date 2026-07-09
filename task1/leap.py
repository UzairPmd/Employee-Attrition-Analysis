def leap(year):
    return True if (year % 400 == 0 or (year % 4 == 0 and year % 100 != 0)) else False
print(leap(2000))  
print(leap(1900))  
print(leap(2024))  
print(leap(2023))  
