# text = "kishan akbari"
# print(text.find("kishan"))               # 0
# print(text.find("han", 0))               # 3
# print(text.find("akbari", 0, 8))         # -1
# print(text.find("akbari", 0, len(text))) # 7
# #------------------------------------------------------------------------------------------
# print(text.rfind("kishan"))         # 0 
# print(text.rfind("akbari", 0, 25))  # 7
# print(text.rfind("kishan", 1, 10))  # -1
# #------------------------------------------------------------------------------------------
# print("Hello World".istitle())        # True
# print("Python Is Fun".istitle())      # True
# print("A Quick Brown Fox".istitle())  # True
# print("123 Hello".istitle())          # True (numbers do not affect title case)
# print("hello world".istitle())        # False (all lowercase)
# print("Hello world".istitle())        # False (only the first word is title-case)
# print("PYTHON Is Fun".istitle())      # False (all uppercase for 'PYTHON')
# print("Hello-world".istitle())        # False (hyphen splits the words)
# print("Hello_world".istitle())        # False (underscore does not split words)
# print("".istitle())                   # False
# # ------------------------------------------------------------------------------------------
# print("hello world".capitalize())    # Output: "Hello world"
# print("PYTHON".capitalize())         # Output: "Python"
# print("python is fun".capitalize())  # Output: "Python is fun"
# print("123hello".capitalize())       # Output: "123hello" (first character is a number)
# print("@hello world".capitalize())   # Output: "@hello world" (first character is a symbol)
# print("hELLo WoRLD".capitalize())    # Output: "Hello world"
# print("  hello world".capitalize())  # Output: "  hello world"
# print("æther".capitalize())          # Output: "Æther"
# print("".capitalize())               # Output: "" (empty string remains unchanged)
# print(" ".capitalize())              # Output: " " (space remains unchanged)
# # ------------------------------------------------------------------------------------------
# print("hello world".upper())    # Output: "HELLO WORLD"
# print("123abc".upper())         # Output: "123ABC"
# print("hello@world".upper())    # Output: "HELLO@WORLD"
# # ------------------------------------------------------------------------------------------
# print("HELLO123!".lower())      # Output: "hello123!"
# print("HELLO@WORLD".lower())    # Output: "hello@world"
# print("12345".lower())          # Output: "12345"
# print("@#$%^".lower())          # Output: "@#$%^"
# # ------------------------------------------------------------------------------------------
# print("Hello123!".swapcase())      # Output: "hELLO123!"
# print("HeLLo@WoRLD".swapcase())    # Output: "hEllO@wOrld"
# print("PyThOn Is FuN!".swapcase()) # Output: "pYtHoN iS fUn!"
# print("".swapcase())               # Output: "" (empty string remains unchanged)
# # ------------------------------------------------------------------------------------------
# name = "Alice"
# age = 25
# print(name + " is " + str(age) + " years old.")  # Output: "Alice is 25 years old."

# words = ["Python", "is", "fun"]
# result = " ".join(words)
# print(result)  # Output: "Python is fun"
# result = "-".join(words)
# print(result)  # Output: "Python-is-fun"

# name = "Alice"
# age = 25
# result = f"{name} is {age} years old."
# print(result)  # Output: "Alice is 25 years old."

# name = "Bob"
# age = 30
# result = "{} is {} years old.".format(name, age)
# print(result)  # Output: "Bob is 30 years old."

# result = "%s is %d years old." % ("Charlie", 35)
# print(result)  # Output: "Charlie is 35 years old."

# words = ["Concatenating", "strings", "is", "fun!"]
# result = ""
# for word in words:
#     result += word + " "
# print(result.strip())  # Output: "Concatenating strings is fun!"
# # ------------------------------------------------------------------------------------------
# # Repeating an empty string
# text = ""
# result = text * 5
# print(result)  # Output: ""
# text = "Hi"
# result = text * 2.5  # TypeError
# text = "Hello"
# result = text * -3
# print(result)  # Output: ""
# # Nested repetition
# outer = "Outer "
# inner = "Inner "
# result = (outer + (inner * 2)) * 3
# print(result)  # Output: "Outer Inner Inner Outer Inner Inner Outer Inner Inner "
# #------------------------------------------------------------------------------------------
# text = "Hello, world!"
# print("Hello" in text)      # True
# print("Python" not in text) # True
# print("h" in text)          # False (case-sensitive)
# print("z" not in text)      # True
# print(" " in text)          # True
# print("" in text)           # True
# print("" not in text)       # False

# person = {"name": "Alice", "age": 25}
# print("name" in person)       # True (checks keys)
# print("Alice" in person)      # False (doesn't check values)
# print("age" not in person)    # False
# #------------------------------------------------------------------------------------------
# print("Python123".isalnum())   # True
# print("Hello".isalnum())       # True
# print("12345".isalnum())       # True
# print("Hello World".isalnum()) # False  (space is not alnum)
# print("Hello@World".isalnum()) # False  (spacial cheracters is not alnum)
# print("".isalnum())            # False
# #------------------------------------------------------------------------------------------
# print("Hello".isalpha())        # True
# print("A".isalpha())            # True
# print("Hello123".isalpha())     # False (Contains digits)
# print("Hello World".isalpha())  # False (Contains space)
# print("Hello@World".isalpha())  # False (Contains '@')
# print("12345".isalpha())        # False (Contains only digits)
# print("abc!xyz".isalpha())      # False (Contains special character '!')
# print("".isalpha())             # False (Empty string)
# #------------------------------------------------------------------------------------------
# print("12345".isdecimal())     # True
# print("12.34".isdecimal())     # False (Contains a decimal point)
# print("123^4".isdecimal())     # False (Contains '^' between digits)
# print("123²".isdecimal())      # False (Contains superscript digit)
# print("12345abc".isdecimal())  # False (Contains non-digit characters)
# print("Hello".isdecimal())     # False (Contains alphabetic characters)
# print("12345#".isdecimal())    # False (Contains special character '#')
# print("٢٣٤٥".isdecimal())      # True (Arabic digits are considered decimal)
# print("²³".isdecimal())        # False (Superscript digits are not decimal
# print("½".isdecimal())         # False (Fractional character is considered decimal)
# print("".isdecimal())          # False (Empty string)
# #------------------------------------------------------------------------------------------
# print("12345".isdigit())      # True
# print("123 456".isdigit())    # False (Contains space)
# print("123abc".isdigit())     # False (Contains alphabetic characters)
# print("²³".isdigit())         # True (Superscript digits are considered digits)
# print("½".isdigit())          # False (Fractional character is not considered digit)
# print("123²".isdigit())       # True 
# print("12/34".isdigit())      # False (Contains '/')
# print("١٢٣٤٥".isdigit())      # True (Arabic digits are considered digits)
# print("".isdigit())           # False (Empty string)
# #------------------------------------------------------------------------------------------
# return False for [alpha/spacial characters, spaces, symbols]
# print("12345".isnumeric())    # True
# print("123 456".isnumeric())  # False (Contains space)
# print("123abc".isnumeric())   # False (Contains alphabetic characters)
# print("²³".isnumeric())       # True (Superscript digits are considered numeric)
# print("½".isnumeric())        # True (Fractional character is considered numeric)
# print("١٢٣٤٥".isnumeric())    # True (Arabic digits are considered numeric)
# print("VI".isnumeric())       # False (Roman numeral 'VI' is not considered as numeric)
# print("".isnumeric())         # False (Empty string)
# #------------------------------------------------------------------------------------------
# print("Hello, World!".isascii())  # True (All characters are ASCII)
# print("Café".isascii())           # False (Contains 'é', which is non-ASCII)
# print("1234567890!".isascii())    # True (All characters are ASCII)
# print("Привет".isascii())         # False (Contains Cyrillic characters)
# print("".isascii())               # True (An empty string has no non-ASCII characters)
# print("   ".isascii())            # True (Whitespace characters are ASCII)
# #------------------------------------------------------------------------------------------
# print("variable".isidentifier())   # True (valid identifier)
# print("variable_1".isidentifier()) # True (valid identifier)
# print("_variable".isidentifier())  # True (valid identifier)
# print("_variable#".isidentifier()) # False (spacial ch is not allow)
# print("while".isidentifier())      # True (reserved keyword)
# print("int".isidentifier())        # True (reserved keyword)
# print("@for".isidentifier())       # False (spacial ch is not allow)
# print("1variable".isidentifier())  # False (cannot start with a number)
# print("var-1".isidentifier())      # False (invalid character '-' is used)
# #------------------------------------------------------------------------------------------
# print("12.45".isascii())       # True
# print("12.45".isalnum())       # False
# print("12.45".isalpha())       # False
# print("12.45".isdecimal())     # False
# print("12.45".isdigit())       # False
# print("12.45".isnumeric())     # False
# print("12.45".isnumeric())     # False
# print("12.45".isdecimal())     # False
# print("12.45".isidentifier())  # False
# #------------------------------------------------------------------------------------------
# my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# l = len(my_list)

# print(my_list[:])        # Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# print(my_list[::])       # Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# print(my_list[::1])      # Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# print(my_list[:l:])      # Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# print(my_list[-l-1:])    # Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# print(my_list[-1::])     # Output: [9]
# print(my_list[::-1])     # Output: [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
# print(my_list[:-l-1:-1]) # Output: [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
# print(my_list[-1:-l-1:]) # Output: []
# print(my_list[2:5])      # Output: [2, 3, 4]
# print(my_list[1:8:2])    # Output: [1, 3, 5, 7]
# print(my_list[:5])       # Output: [0, 1, 2, 3, 4]
# print(my_list[3:])       # Output: [3, 4, 5, 6, 7, 8, 9]
# print(my_list[-4:-1])    # Output: [6, 7, 8]
# print(my_list[::-2])     # Output: [9, 7, 5, 3, 1]
# print(my_list[7:20])     # Output: [7, 8, 9]
# print(my_list[-15:3])    # Output: [0, 1, 2]
# print(my_list[2:3])      # Output: [2]
# print(my_list[7:3])      # Output: []
# print(my_list[5:5])      # Output: []
# print(my_list[8:2:1])    # Output: []
# print(my_list[100:200])  # Output: [] (out-of-range slice gracefully handled)
# print(my_list[2:7:1])    # Output: [2, 3, 4, 5, 6]
# print(my_list[1:7:10])   # Output: [1] (only the first element in range is included)
# print(my_list[7:2:-1])   # Output: [7, 6, 5, 4, 3]
# print(my_list[::3])      # Output: [0, 3, 6, 9]
# print(my_list[-7:-2:2])  # Output: [3, 5, 7]
# print(my_list[7:2:-3])   # Output: [7, 4]
# print(my_list[-100:-2])  # Output: [0, 1, 2, 3, 4, 5, 6, 7]
# print(my_list[::0])      # ValueError: slice step cannot be zero

# nested_slice = my_list[2:8][::2]  # First slice 2:8 = [2,3,4,5,6,7]
# print(nested_slice)               # Output: [2, 4, 6]
# #------------------------------------------------------------------------------------------
# it return tuple
# print("hello".partition(""))                 # ValueError: for empty separator
# print("hello-world-python".partition("-"))     # Output: ('hello', '-', 'world-python')
# print("hello world python".partition("-"))     # Output: ('hello world python', '', '')
# print("-hello-world".partition("-"))           # Output: ('', '-', 'hello-world')
# print("hello-world-".partition("-"))           # Output: ('hello', '-', 'world-')
# print("".partition("-"))                       # Output: ('', '', '')
# print("a".partition("a"))                      # Output: ('', 'a', '')
# print("a".partition("b"))                      # Output: ('a', '', '')
# print("hello world python".partition(" "))     # Output: ('hello', ' ', 'world python')
# print("hello#world#python".partition("#"))     # Output: ('hello', '#', 'world#python')
# print("abc123xyz".partition("123"))            # Output: ('abc', '123', 'xyz')
# key_value = "name:John"
# key, sep, value = key_value.partition(":")
# print(key)   # Output: 'name'
# print(sep)   # Output: ':'
# print(value) # Output: 'John'
# print("apple-banana-cherry".rpartition("-"))   # Output: ('apple-banana', '-', 'cherry')
# print("hello world python".rpartition("-"))    # Output: ('', '', 'hello world python')
# print("-hello-world".rpartition("-"))          # Output: ('', '-', 'hello-world')
# print("hello-world-".rpartition("-"))          # Output: ('hello-world', '-', '')
# #------------------------------------------------------------------------------------------
# print("-".join(["hello", "world"]))  # Output: 'hello-world'
# print(" ".join(["Python", "is"]))    # Output: 'Python is'
# print("".join(["A", "B", "C"]))      # Output: 'ABC'
# print(",".join(["onlyone"]))         # Output: 'onlyone'
# print(",".join([]))                  # Output: ''
# print("-".join("ABCD"))              # Output: 'A-B-C-D'

# print("".join([1, 2, 3]))                  # TypeError: expected str instance, int found
# result = " ".join(["hello", 42, "world"])  # TypeError: expected str instance, int found
# So sol this error............
# map(function, iterable)
# print(" ".join(map(str, [1, 2, 3])))                       # Output: '1 2 3'
# print(" ".join([str(i) for i in ["hello", 42, "world"]]))  # Output: 'hello 42 world'

# tuple, set, dict
# print("-".join(("hello", "world", "python")))  # Output: 'hello-world-python'
# print("-".join({"hello", "world", "python"}))  # Output: 'python-hello-world' (order may vary)
# print("-".join({"1": "one", "2": "two", "3": "three"}))           # Output: '1-2-3'(By default, uses the keys)
# print("-".join({"1": "one", "2": "two", "3": "three"}.values()))  # Output: 'one-two-three'
# #------------------------------------------------------------------------------------------
# print("hello".startswith(""))    # Output: True
# print("".startswith(""))         # Output: True
# # Start checking from index 6
# print("hello world".startswith("world", 6))     # Output: True
# # Check between index 0 and 5
# print("hello world".startswith("world", 0, 7))  # Output: False
# print("hello world".startswith(123))            # TypeError: startswith first arg must be str or a tuple of str, not int

# print("hello world".endswith("world", 6, 10))     # Output: False
# print("hello world".endswith("world", 6, 11))     # Output: True
# # # passing tuple
# print("hello world".endswith(("hello", "python")))              # Output: False
# print("example.txt".endswith((".txt", ".pdf")))                 # Output: True
# print("hello world".endswith(("python", "world", "Darshan")))   # Output: True

