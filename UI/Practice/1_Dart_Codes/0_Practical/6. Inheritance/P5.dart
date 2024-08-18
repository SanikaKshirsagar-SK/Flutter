class Parent{
  int x = 10;
  String str = "Sanika";

  void parentMethod(){
    print(x);
    print(str);
  }
}

class Child extends Parent{
  int x = 20;
  String str = "Rhea";

  void childMethod(){
    print(x);
    print(str);
  }
}

main(){
  Child obj = Child();
  obj.parentMethod();
  obj.childMethod();
}

//o/p

// 20
// Rhea
// 20  
// Rhea