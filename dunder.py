from pprint import pp

s = "text"
l = ['t','e','x','t']

pp(f"str= {s}")
str_attrs = s.__dir__
for attr in str_attrs():
    print(attr)

pp(f"list= {l}")
list_attrs = l.__dir__
for attr in list_attrs():
    print(attr)


print(f"Lets make a set out of string and list attributes")
str_set = set(str_attrs())
list_set = set(list_attrs())

print(f"Shared attributes: {str_set.intersection(list_set)}")

list_to_str_uniques = list_set.difference(str_set)
print(f"List's attrs not present in string: {list_to_str_uniques}")
str_to_list_uniques = str_set.difference(list_set)
print(f"String's attrs not present in list: {str_to_list_uniques}")

print(f"Lets find only dunder methods: ")
print(f"List: {[a for a in list_to_str_uniques if a.endswith('__') and a.startswith('__')]}")
print(f"String: {[a for a in str_to_list_uniques if a.endswith('__') and a.startswith('__')]}")

