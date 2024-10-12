//Abstraction.
//Cannot create an object of abstract class

//Abstract class

abstract class Shape {

  Shape(){
    print("Shape constructor called......");
  }

  void shape();
}

class Circle extends Shape{

  @override
  void shape() {
    print("Circle shape called....");
  }
  
}

class Square extends Shape {

  @override
  void shape() {
    print("Square shape called....");
  }
  
}

// ======================================================================================= //

//Interface

abstract class Interface {
  void inter();
}

class InterfaceImpl implements Interface {

  @override
  void inter() {
    print("Interface is called");
  }

}

/*
In dart interface and abstract class serves same but act different.

Abstract Classes -
Definition: An abstract class can contain both abstract methods (without implementations) and concrete methods (with implementations).
Usage: It serves as a base class that cannot be instantiated directly. Subclasses must provide implementations for the abstract methods.
Constructors: Abstract classes can have constructors.
Members: They can contain fields and methods, both abstract and concrete.

Interfaces -
Definition: In Dart, every class implicitly defines an interface. Any class can be used as an interface, regardless of whether it is abstract or not.
Usage: Classes that implement an interface must provide implementations for all its methods.
No Constructors: Interfaces themselves cannot have constructors.
Members: Interfaces can only declare methods (which must be implemented) and properties.

*/
void main(){
  Shape circleShape = Circle();
  circleShape.shape();

  Shape squareShape = Square();
  squareShape.shape();

  Interface inter = InterfaceImpl();
  inter.inter();
}