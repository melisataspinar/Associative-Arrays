use std::collections::HashMap;

fn foo( key:&str, value:&str )
{
   println!( "{}: {}", key, value );
}

fn main() 
{
    // 1. initialization
    println!("1. Initialization -------------------------------");
    
    let mut map1 = HashMap::from([
        ("name", "Melisa"),
        ("department", "CS"),
        ("ID", "21803668"),
    ]);
    
    for ( key, value ) in &map1 
    {
        println!( "{}: {}", key, value );
    }
  
    // 2. getting the value for a key
    println!("\n2. Getting value of key -------------------------");
    println!( "{}", map1["name"] );
  
    // 3. adding an element
    println!("\n3. Adding an element ----------------------------");
    map1.insert( "age", "21", );
    for ( key, value ) in &map1 
    {
        println!( "{}: {}", key, value );
    }
  
    // 4. removing an element
    println!("\n4. Removing an element --------------------------");
    map1.remove("department");
    for ( key, value ) in &map1 
    {
        println!( "{}: {}", key, value );
    }

    // 5. modifying existing element’s value
    println!("\n5. Modifying existing element’s value -----------");
    *map1.get_mut("age").unwrap() = "22";
    for ( key, value ) in &map1 
    {
        println!( "{}: {}", key, value );
    }

    // 6. searching for existence of a key
    println!("\n6. Searching for existence of a key -------------");
    println!( "{}", map1.contains_key("name") );
    println!( "{}", map1.contains_key("surname") );

    // 7. searching for existence of a value
    println!("\n7. Searching for existence of a value -----------");
    for ( _key, &value ) in &map1 
    {
        if value.eq("Melisa") 
        {
            println!( "The value Melisa exists in map." );
        }
        if value.eq("Yeliz") 
        {
            println!( "The value Melisa exists in map." );
        }
    }
  
    // 8. looping
    println!("\n8. Looping --------------------------------------");
    for ( key, value ) in &map1 
    {
        foo( key, value );
    }
}

