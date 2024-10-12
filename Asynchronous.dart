/*
We stopped thread for 5 seconds and when it is over then execute the rest of commands.
If we not use await then it will execute the commands before getting the result.

If you are using await then also use async to a method signature.
*/
import 'dart:isolate';

void executeFutureTask() async {
  print('Main isolate: ${Isolate.current.debugName}');

  print("Network calling started....");
  await Future.delayed(Duration(seconds: 5));
  print("Data arrived...");
}

void executeAfterSometime(int seconds){
  print("executeAfterSometime() called");
  Future.delayed(Duration(seconds: seconds) , () {
    print("Executing this after $seconds seconds");
  },);
}

Future<String> getDataInFuture(){
  return Future.delayed( Duration(seconds: 10), () {
    return "Flutter development through Dart.";
  },);
}

void throughFuture() async{
  print("throughFuture called...");
  String dataFromFuture = await getDataInFuture();
  print(dataFromFuture);
}

void main(){
  executeFutureTask(); //It is will take a time as future result is coming so executeAfterSometime() will be executed earlier on main thread.
  executeAfterSometime(5);
  throughFuture();
}