//Single Inheritance.
//Dart not support multiple inheritance through classes but support through mixins.

//Base class
class Car {

  void start(){
    print("Car started...");
  }

  void stop(){
    print("Car stopped...");
  }

}

//Derived class using properties of parent class.
class SportsCar extends Car{

  void startCar(){
    super.start(); //Calling methods of super class
    accelerate();
    stop();
  }

  void accelerate(){
    print("Sports Car Accelerated......");
  }

}

void main(){
  SportsCar car = SportsCar();
  car.startCar();
}