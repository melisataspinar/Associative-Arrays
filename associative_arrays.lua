function printArray( array )
    for key, value in pairs(array) do
	    print(key..': '..value)
	end
end

function containsKey( array, key )
    if array[key] == nil then 
        return false
    end
    return true
end

function containsValue( array, val )
    for key, value in pairs( array ) do
        if value == val then 
            return true 
        end
    end
    return false
end

function foo( key, value )
    print(key..': '..value)
end

-- 1. initialization
print('1. Initialization ---------------------------------')

local array1 = 
{ 
    name = "Melisa", 
    department = "CS",
    ID = 21803668
}
printArray( array1 )

-- 2. getting the value for a key
print('\n2. Getting value of key -------------------------')
print( array1["name"] )
print( array1.name )

-- 3. adding an element
print('\n3. Adding an element ----------------------------')
printArray( array1 )
array1.age = 21
print('-------------')
printArray( array1 )

-- 4. removing an element
print('\n4. Removing an element --------------------------')
printArray( array1 )
array1.department = nil
print('-------------')
printArray( array1 )
  
-- 5. modifying existing element's value
print('\n5. Modifying existing element\'s value -----------')
printArray( array1 )
array1.age = 22
print('-------------')
printArray( array1 )
  
-- 6. searching for existence of a key
print('\n6. Searching for existence of a key -------------')
print( array1.name )
print( array1.surname )
print('-------------')
print( containsKey( array1, "name" ) )
print( containsKey( array1, "surname" ) )

-- 7. searching for existence of a value
print('\n7. Searching for existence of a value -----------')
print( containsValue( array1, 'Melisa' ) )
print( containsValue( array1, 'Yeliz' ) )
  
-- 8. looping
print('\n8. Looping --------------------------------------')
for key, value in pairs(array1) do
    foo( key, value )
end

