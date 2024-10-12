class Animal {
  void speak() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('Cat meows');
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.speak(); 
  myCat.speak(); 
}
  
