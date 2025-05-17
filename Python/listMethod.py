# list1 = [1, 2]
# empty_list = []
# print(list1 + empty_list)  # [1, 2]

# list1 = [1, 2]
# print(list1 + [(3,4)])  # Output: [1, 2, (3, 4)]

# print([1, "apple", 3.5].append(True))  # None
# print([].append(1))  # None

# lst = []
# lst.append(1)
# print(lst)  # [1]

# lst = [1, 2]
# lst.append(3)
# print(lst)  # [1, 2, 3]

# lst = [1, 2]
# lst.append([3, 4])
# print(lst)  # [1, 2, [3, 4]]

# lst = [1, 2]
# lst.append((3, 4))
# print(lst)  # ans: [1, 2, (3, 4)]

# lst = [1, 2]
# lst.append(3).append(4)
# # ans: AttributeError: 'NoneType' object has no attribute 'append'
# # ------------------------------------------------------------------------------------------
# print([1, 2].extend([3, 4]))  # Output: None

# lst = [1, 2]
# # lst.extend(3)     # error
# # lst.extend((3))   # not allow error
# lst.extend([10])    # allow
# lst.extend({20})    # allow
# lst.extend((30,))   # allow
# lst.extend([111,222])
# print(lst)  # [1, 2, 10, 20, 30, 111, 222]

# lst = ["a", "b"]
# lst.extend("c")
# lst.extend("AK")
# lst.extend(["AK","AK"])
# print(lst)  # ['a', 'b', 'c', 'A', 'K', 'AK', 'AK']
# # ------------------------------------------------------------------------------------------
# list.insert(index, element)
# lst = [1, 2, 3]
# lst.insert(1, "hello")
# print(lst)  # [1, 'hello', 2, 3]

# lst = [1, 2, 3]
# lst.insert(10, "too far")
# print(lst)  #  [1, 2, 3, 'too far']

# lst = [1, 2, 3]
# print("index(-1) = ",lst[-1])
# lst.insert(-1, "near end")
# print(lst)  # [1, 2, 'near end', 3]

# lst = [1, 2, 3]
# lst.insert(-100, "start")
# print(lst)  #  ['start', 1, 2, 3]
# # ------------------------------------------------------------------------------------------
# print(1 in [])  # Output: False

# lst = [1, 2, 3, 4]
# print(3 in lst)  # True
# print(5 in lst)  # False

# lst = [1, 2, 3, 4]
# print(3 not in lst)  # False
# print(5 not in lst)  # True

# tpl = (1, 2, 3, 4)
# print(2 in tpl)  # Output: True
# print(5 in tpl)  # Output: False

# s = {1, 2, 3, 4}
# print(3 in s)  # Output: True
# print(5 in s)  # Output: False

# d = {"a": 1, "b": 2, "c": 3}
# print("a" in d)  # Output: True
# print("z" in d)  # Output: False
# # ------------------------------------------------------------------------------------------
# create a shallow copy
# original = [1, 2, 3]
# copied = original.copy()
# print("Original:", original)  # Output: [1, 2, 3]
# print("Copied:", copied)      # Output: [1, 2, 3]
# # ------------------------------------------------------------------------------------------
# index based : pop(index) or pop()

# lst = []
# lst.pop()  # Raises IndexError: pop from empty list

# lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
# lst.pop()
# print(lst) # [1, 2, 3, 4, 5, 6, 7, 8, 9]

# lst = [[1, 2], 3, 4, 5, 6, 7, 8, 9, 0]
# lst.pop(0)
# print(lst) # [3, 4, 5, 6, 7, 8, 9, 0]

# lst = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
# lst.pop(-2)
# # lst.pop(-33)   # IndexError: pop index out of range
# print(lst) # [1, 2, 3, 4, 5, 6, 7, 8, 0]
# # ------------------------------------------------------------------------------------------
# value based : remove(value)

# lst = [1, 2, 3, 4]
# lst.remove(5)  # Raises ValueError: list.remove(x): x not in list

# lst = [1, 2, 2, 2]
# lst.remove(2)
# print(lst)  # Output: [1, 2, 2]
# # ------------------------------------------------------------------------------------------
# lst = [1, 2, 3, 4]
# lst.clear()
# print(lst)  # Output: []

# lst = []
# lst.clear()
# print(lst)  # Output: []
# # ------------------------------------------------------------------------------------------
# my_list = [10, 20, 30, 20, 40, 50, 60 ,20]

# index_of_20 = my_list.index(20)
# print(index_of_20)  # Output: 1

# index_of_20 = my_list.index(20, 2)  # Start from 2
# print(index_of_20)  # Output: 3

# index_of_20 = my_list.index(20, 4, 7)  # Start from 4 , end 7-1=6
# print(index_of_20)  # Raises ValueError

# index_of_100 = my_list.index(100)  # Raises ValueError
# # ------------------------------------------------------------------------------------------
# my_list = [3, 1, 2, 5, 4]
# my_list.sort()
# print(my_list)  # Output: [1, 2, 3, 4, 5]

# my_list = [3, 1, 2, 5, 4]
# my_list.sort(reverse=True)
# print(my_list)  # Output: [5, 4, 3, 2, 1]

# my_list = ['apple', 'b', 'z', 'b','kiwi']
# my_list.sort(key=len)
# print(my_list)  # Output: ['b', 'z', 'b', kiwi', 'apple']
# # ------------------------------------------------------------------------------------------
# my_list = [1, 2, 3, 4, 5]
# my_list.reverse()
# print(my_list)  # Output: [5, 4, 3, 2, 1]
# # ------------------------------------------------------------------------------------------
# evens = [x for x in range(1, 11) if x % 2 == 0]
# print(evens)  # Output: [2, 4, 6, 8, 10]

# numbers = [1, 2, 3, 4, 5, 6]
# result = ['even' if x % 2 == 0 else 'odd' for x in numbers]
# print(result)  # Output: ['odd', 'even', 'odd', 'even', 'odd', 'even']

# matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# flat_list = [item for row in matrix for item in row]
# print(flat_list)  # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
# # ------------------------------------------------------------------------------------------
# my_list = [1, 2]
# a, b, c = my_list  # Raises ValueError: not enough values to unpack

# my_list = [1, 2, 3, 4]
# a, _, _,d = my_list
# print(a)  # Output: 1
# print(d)  # Output: 4

# my_list = [1, 2, 3, 4, [10,20,30]]
# a, *b, c = my_list
# a, *b, (x,y,z) = my_list
# print(a)  # Output: 1
# print(b)  # Output: [2, 3, 4]
# print(c)  # Output: [10, 20, 30]
# print(f"{x} , {y} , {z}")  # 10 , 20 , 30
# # ------------------------------------------------------------------------------------------



