# 1. initialization
print( "1. initialization -----------------------------------")
dict1 = {"name": "Melisa", 
            "department": "CS", 
            "ID": 21803668 }
print( dict1 )

dict2 = {"name": "Melisa1", 
            "name": "Melisa2", 
            "ID": 21803668 }
print(dict2)

# 2. getting value for a key
print( "2. getting value for a key --------------------------")
print( dict1["name"] )

# 3. adding an element
print( "3. adding an element --------------------------------")
print( dict1 )
dict1["age"] = "21"
print( dict1 )

# 4. removing an element
print( "4. removing an element ------------------------------")
print( dict1 )
dict1.pop( "department" )
print( dict1 )

# 5. modifying existing element
print( "5. modifying existing element ----------------------")
print( dict1 )
dict1["age"] = "22"
print( dict1 )

# 6. searching for a key
print( "6. searching for a key ------------------------------")
print( 'name' in dict1 )
print( 'surname' in dict1 )

# 7. searching for a value
print( "7. searching for a value ----------------------------")
values = list( dict1.values() )
print( "Melisa" in values )
print( "Yeliz" in values )

# 8. looping
print( "8. looping ------------------------------------------")

def foo( key, value ):
  print( str(key) + ": " + str(value) )
  
for key, value in dict1.items():
    foo( key, value )

