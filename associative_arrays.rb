# 1. initialization
puts "1. initialization -----------------------------------"
hash1 = {"name" => "Melisa", "department" => "CS" , "ID" => 21803668}
puts hash1

# 2. getting value for a key
puts "\n2. getting value for a key --------------------------"
puts hash1["name"]

# 3. adding an element
puts "\n3. adding an element --------------------------------"
puts hash1
hash1["age"] = "21"
puts hash1

# 4. removing an element
puts "\n4. removing an element ------------------------------"
puts hash1
hash1.delete( "department" )
puts hash1

# 5. modifying existing element
puts "\n5. modifying existing element ----------------------"
puts hash1
hash1["age"] = "22"
puts hash1

# 6. searching for a key
puts "\n6. searching for a key ------------------------------"
puts hash1.key? "name"
puts hash1.key? "surname" 

# 7. searching for a value
puts "\n7. searching for a value ----------------------------"
puts hash1.has_value? "Melisa"
puts hash1.has_value? "Yeliz"

# 8. looping
puts "\n8. looping ------------------------------------------"

def foo( key, value ) 
    puts key + ": " + value.to_s
end

hash1.each do |key, value|
  foo( key, value )
end


