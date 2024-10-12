import 'dart:io';

//Main function - beignning of program.
void main(){
 fun();
}

void fun(){
  requiredParam(2, "Flutter");
  nullChecks(null);
}

//Datatypes
void dataTypes(){
  int x  = 10;
  bool isWorking = false;
  String name = "Flutter";
  double score = 99.8;
}

//TypeCasting
void typeCasting(){

  //String to int
  int number = int.parse("20089");

  //String to double
  double score = double.parse("99.87");

  //double to int & string
  int doubleToInt = score.toInt();
  String doubleToStr = score.toString();

}

//IO operations (Write/Read)
void io(){

  //Write to console
  stdout.write("Hi, Dart!"); //Changes line - need io package
  print("Hello flutters.."); //Doesn't change line

  //Read from console
  String? data = stdin.readLineSync();
  stdout.write(data);
}


//Null checks
String nullChecks(String? empName){
  String? name = empName;  //Null check operator - variable might be null
  print(name?.length); //Even the name is null it doesn't throw error because of null check.
  name = "Dart";
  print(name);

  return name!; //Return value should not null. If value is null then it throw runtime exception
}

//Function with non required params.
//[double? salary] - not mandatory to pass.
void requiredParam(int id , String name , [double? salary]){
  print("Id: $id , Name: $name");
}

String getName() => "Dart"; //Arrow function

/*
61 keywords in dart.
if else , switch , loops are same as in another programming languages like java.
*/



