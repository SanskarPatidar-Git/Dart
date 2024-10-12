class Constructor {

  String? name ; 

  //Default constructor
  Constructor(){
    print("Default constructor called..");
  }

  //Constructor with parameters.
  Constructor.withName(String name){
    this.name = name;
    print("Construcotr with Parameter");
  }

  //Private constructor
  Constructor._(){
    print("Private Constructor....");
  }

  //Constructors with params with direct initialization.
  Constructor.directInit(this.name){
    print(" Direct Initialization Name: $name");
  }

  //Named Construtor
  Constructor.nameParam(String name) : this.withName(name);  

  factory Constructor.anonymous() {
    return Constructor.directInit('Factory Constructor');
  }

}

void main(){
  Constructor c = Constructor.withName("Flutter");
  print(c.name);
}