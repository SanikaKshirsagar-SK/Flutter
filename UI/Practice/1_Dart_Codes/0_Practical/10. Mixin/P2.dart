mixin class Parent{
  int x = 100;
  static int y = 999;
  void printData(){
    print(x);
    print(y);
  }
}

class Child implements Parent{
  int x = 200;
  void printData(){
    print("Hii");
  }
}

main(){
  Child().printData();
}

//o/p

//Hii