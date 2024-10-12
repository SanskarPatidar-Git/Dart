class Exception {

  void handleException(){
    
    int number = 10;

    //Handle Exception of division by zero exception.
    try{
      print("Before exception....");
      print(number~/0);
    } on IntegerDivisionByZeroException catch(e){
      print(e.toString());
    }

    //Multiple catch with single try.
    try{
      throw Exception();
    } on IntegerDivisionByZeroException {
      print("IntegerDivisionByZeroException block executed.......");
    } on Exception catch(e){
      print("Exception block executed.......");
    } finally {
      print("Finally block");
    }
    
  }
}

void main(){
  Exception e = Exception();
  e.handleException();
}