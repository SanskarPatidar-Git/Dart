class Singleton {

static Singleton? _instance;

  Singleton._(){
    print("Constructor called.....");
  }

  void execute(){
    print("Execute task....");
  }

  static Singleton getInstance(){
    if(_instance == null)
      _instance = new Singleton._();
    return _instance!;
  }

}

// Creating directly object from another library is not possible.

void main(){
  Singleton singleton = Singleton.getInstance();
  print("First object : ${singleton.hashCode}");
  singleton.execute();

  Singleton second = Singleton.getInstance();
  print("Second object : ${second.hashCode}");
  second.execute();
}