# my_set = {1, 2, 3}
# my_set.add(4)
# print(my_set)  # Output: {1, 2, 3, 4}

# my_set = {1, 2, 3}
# my_set.remove(2)
# print(my_set)       # Output: {1, 3}
# # my_set.remove(5)  # Raises KeyError

# my_set = {1, 2, 3}
# my_set.discard(2)
# my_set.discard(5)  # No error
# print(my_set)      # Output: {1, 3}
# --------------------------------------------------------------------------------------------
set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}

# print(set1.union(set2))                # Output: {1, 2, 3, 4, 5, 6, 7, 8}
# print(set1.intersection(set2))         # Output: {4, 5}
# print(set1.symmetric_difference(set2)) # Output: {1, 2, 3, 6, 7, 8}
# print(set1.difference(set2))           # Output: {1, 2, 3}
# print(set2.difference(set1))           # Output: {6, 7, 8}

# set1.update(set2)                # (set1: set1 union set2)
# print(set1)  # Output: {1, 2, 3, 4, 5, 6, 7, 8}

# set1.intersection_update(set2)   # (set1: set1 intersection set2)
# print(set1)  # Output: {4, 5}

# s1 = {1, 2, 3}
# s2 = {2, 4, 6}
# s1.difference_update(s2)
# print(s1)  # Output: {1, 3}

# set1.symmetric_difference_update(set2)
# print(set1)  # Output: {1, 2, 3, 6, 7, 8}

# print(set1.issubset(set2))    # Output: False
# print(set1.issuperset(set2))  # Output: False
# print(set1.isdisjoint(set2))  # Output: False (set1 and set2 have no common elements?)

# print(4 in set1)  # Output: True
# print(10 in set1)  # Output: False

# set1.pop()
# print(set1)   # Output: (pop Random element)

# set1.clear()
# print(set1)      # Output: set()

# set_copy = set2.copy()
# print(set_copy)  # Output: {4, 5, 6, 7, 8}
#-------------------------------------------------------------------------------------
# set1 = {1, 2, 3, 4, 5}
# set2 = {4, 5, 6, 7, 8}

# # 1. Union (| operator)
# print(set1 | set2)  # Output: {1, 2, 3, 4, 5, 6, 7, 8}

# # 2. Update (|= operator)
# set1 |= set2
# print(set1)  # Output: {1, 2, 3, 4, 5, 6, 7, 8}

# # 3. Intersection (& operator)
# print(set1 & set2)  # Output: {4, 5}

# # 4. Intersection Update (&= operator)
# set1 &= set2
# print(set1)  # Output: {4, 5}

# # 5. Difference (- operator)
# print(set1 - set2)  # Output: set()

# # 6. Difference Update (-= operator)
# set1 -= set2
# print(set1)  # Output: set()

# # 7. Symmetric Difference (^ operator)
# print(set1 ^ set2)  # Output: {1, 2, 3, 6, 7, 8}

# # 8. Symmetric Difference Update (^= operator)
# set1 ^= set2
# print(set1)  # Output: {1, 2, 3, 6, 7, 8}

# # 9. Subset (<= operator)
# print(set1 <= set2)  # Output: False

# # 10. Superset (>= operator)
# print(set1 >= set2)  # Output: False