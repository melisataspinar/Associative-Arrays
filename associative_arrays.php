<?php
function foo( $key, $value ) 
{
    echo $key . ": " . $value;
}

// 1. initialization
echo "1. Initialization ---------------------------------\n";

$array1 = array( "name" => "Melisa", "department" => "CS", "ID" => 21803668 );

foreach( $array1 as $key => $value ) 
{
  echo $key . ": " . $value . "\n";
}
echo "----------\n";

$array2["name"] = "Melisa";
$array2["department"] = "CS";
$array2["ID"] = 21803668;

foreach( $array2 as $key => $value ) 
{
  echo $key . ": " . $value . "\n";
}

// 2. getting the value for a key
echo "\n2. Getting value of key -------------------------\n";

echo $array1["name"] . "\n";

// 3. adding an element
echo "\n3. Adding an element ----------------------------\n";

$array1["age"] = 21;

foreach( $array1 as $key => $value ) 
{
  echo $key . ": " . $value . "\n";
}

// 4. removing an element
echo "\n4. Removing an element --------------------------\n";

unset( $array1["department"] );

foreach( $array1 as $key => $value ) 
{
  echo $key . ": " . $value . "\n";
}

// 5. modifying an existing element's value
echo "\n5. Modifying existing element\'s value -----------\n";

$array1["age"] = 22;

foreach( $array1 as $key => $value ) 
{
  echo $key . ": " . $value . "\n";
}

// 6. searching for existence of a key
echo "\n6. Searching for existence of a key -------------\n";

if ( array_key_exists("name", $array1) ) 
{
  echo "Name key exists in array.\n";
}
if ( array_key_exists("surname", $array1) ) 
{
  echo "Surname key exists in array.\n";
}

// 7. searching for existence of a value
echo "\n7. Searching for existence of a value -----------\n";

echo "Key for Melisa: " . array_search( "Melisa", $array1 ) . "\n";
echo "Key for Yeliz: " . array_search( "Yeliz", $array1 ) . "\n";

// 8. looping
echo "\n8. Looping --------------------------------------\n";
foreach( $array1 as $key => $value ) 
{
  foo( $key, $value );
  echo "\n";
}

?>