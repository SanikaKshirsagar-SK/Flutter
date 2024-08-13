class Company{
  void compName(){
    print("Google");
  }
}

class Employee extends Company{

  void compName(){
    print("Apple");
  }
}

main(){
  Company obj = Employee();
  obj.compName();
}

//o/p

// Apple