void foo(key, value)
{  
   print( '$key: $value' );
}  

void main() 
{
  // 1. initialization
  print('1. Initialization -------------------------------');
  var array1 = 
  {
    'name': 'Melisa',
    'department': 'CS',
    'ID': 21803668
  };
  print( array1 );
  
  var array2 = Map();
  array2['name'] = 'Melisa';
  array2['department'] = 'CS';
  array2['ID'] = 21803668;
  print( array2 );
  
  // 2. getting the value for a key
  print('\n2. Getting value of key -------------------------');
  print( array1['name'] );
  
  // 3. adding an element
  print('\n3. Adding an element ----------------------------');
  print( array1 );
  array1['age'] = 21;
  print( array1 );
  
  // 4. removing an element
  print('\n4. Removing an element --------------------------');
  print( array1 );
  array1.remove('department');
  print( array1 );
  
  // 5. modifying existing element’s value
  print('\n5. Modifying existing element’s value -----------');
  print( array1 );
  array1['age'] = 22;
  print( array1 );
  
  // 6. searching for existence of a key
  print('\n6. Searching for existence of a key -------------');
  print( array1.containsKey('name') );
  print( array1.containsKey('surname') );
  
  // 7. searching for existence of a value
  print('\n7. Searching for existence of a value -----------');
  print( array1.containsValue('Melisa') );
  print( array1.containsValue('Yeliz') );
  
  // 8. looping
  print('\n8. Looping --------------------------------------');
  
  array2.forEach( (key, value) 
  {
    foo(key, value);
  });
}
