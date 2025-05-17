# tuple1 = (1, 2)
# list1 = [3, 4]
# result = tuple1 + tuple(list1)
# print(result)  # Output: (1, 2, 3, 4)

# tuple1 = (1, 2)
# result = tuple1 * 3  # Repeats the tuple 3 times
# print(result)  # Output: (1, 2, 1, 2, 1, 2)
# # --------------------------------------------------------------------------------------------
# my_tuple = (10, 20, 30, 40)
# print(20 in my_tuple)  # Output: True
# print(50 in my_tuple)  # Output: False
# print(50 not in my_tuple)  # Output: True
# print(20 not in my_tuple)  # Output: False
# # --------------------------------------------------------------------------------------------
# packed_tuple = 10, 20, 30
# print(packed_tuple)  # tuple: (10, 20, 30)

# x = 10
# y = 20
# coordinates = x, y  
# print(coordinates)  # tuple: (10, 20)

# Tuple Unpacking:
# Only one variable in the unpacking can use the * operator.
# The * variable will always be a list, even if there's only one value or no values left.
# a, *b = 10, 20, 30, 40, 50, 60
# print(a)  # Output: 10
# print(b)  # list : [20, 30, 40, 50, 60]

# data = (1, 2, 3, 4, 5)
# first, *middle, last = data
# print(first)   # Output: 1
# print(middle)  # Output: [2, 3, 4]
# print(last)    # Output: 5

# def calculate_average(*numbers):
#     return sum(numbers) / len(numbers)
# print(calculate_average(10, 20, 30))  # Output: 20.0
# # --------------------------------------------------------------------------------------------


