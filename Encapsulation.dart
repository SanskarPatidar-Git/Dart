//In dart we can make private members and methods with suffix (_).

class Person {
  String _name; // Private member
  int _age;     // Private member

  Person(this._name, this._age);

  void _displayInfo() { // Private method
    print('Name: $_name, Age: $_age');
  }

  void publicDisplay() { // Public method
    _displayInfo(); // Accessing private method
  }
}

void main() {
  var person = Person('Samar', 30);
  person.publicDisplay(); // Output: Name: Alice, Age: 30
  
  // The following lines would cause an error:
  print(person._name); // Error: The getter '_name' isn't defined for the class 'Person'.
  person._displayInfo(); // Error: The method '_displayInfo' isn't defined for the class 'Person'.
}

/*
NOTE:
Library Scope: Remember that "private" in Dart means private to the library, not just the class. If you have multiple classes in the same file, they can access each other's private members.
*/
