class Collections {

  /* ------------------------------------------ LIST --------------------------------------------*/

  void list(){
    
    List<String> list = [];
    
    //Adding elements to list.
    list.add("C");
    list.add("C++");
    list.add("Java");
    list.add("Kotlin");

    print(list);

    //Accessing element by index
    print(list[0]);

    //Remove object from list
    list.remove("C");
    print(list);

    //Reverse a list
    print(list.reversed);

    //Insert data to specific position
    list.insert(1, "Android");
    print(list);

    //Iterating list
    for (String lang in list) {
      print(lang);
    }

  }

  /* ------------------------------------------ MAP --------------------------------------------*/
  void map(){

    // Using map literal
    var capitals = {
      'India' : 'Delhi',
      'USA': 'Washington, D.C.',
      'France': 'Paris',
      'Japan': 'Tokyo',
    };

    // Using Map constructor
    var scores = Map<String, int>();
    scores['Aman'] = 98;
    scores['Rohit'] = 87;

    print(capitals);
    print(scores);

    //Accessing values - Give null if key is not present
    int? value = scores['Aman1'];
    print(value);

    //Add key-value to map - update the value if key is already present
    capitals['Germany'] = 'Berlin';
    print(capitals);

    //Remove from map
    capitals.remove('Japan');
    print(capitals);

    //Iterating map
    capitals.forEach((key, value) {
      print('$key: $value');
    });
  }

  /* ------------------------------------------ SET --------------------------------------------*/
  void set(){

    var fruits = {'Apple', 'Banana', 'Cherry'};
    
    // Adding a fruit
    fruits.add('Date');
    
    // Attempting to add a duplicate
    fruits.add('Apple'); // This will have no effect

    // Displaying the set
    print(fruits); // Output: {Apple, Banana, Cherry, Date}

    // Checking for membership
    if (fruits.contains('Cherry')) {
      print('Cherry is in the set.');
    }

    // Removing a fruit
    fruits.remove('Banana');

    // Iterating through the set
    for (var fruit in fruits) {
      print(fruit);
    }

    //Remove duplicates
    var numbersFromList = Set.from([1, 2, 2, 3, 4 , 1]);
    print("List to set : $numbersFromList");

  }

}

void main(){
  Collections c = Collections();
  c.list();
  print("\n----------- MAP ----------");
  c.map();
  print("\n----------- SET ----------");
  c.set();
}