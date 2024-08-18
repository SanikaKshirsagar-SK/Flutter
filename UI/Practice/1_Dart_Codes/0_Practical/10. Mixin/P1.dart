mixin class Parent{
  int x = 100;
  static int y = 999;
  void printData(){
    print(x);
    print(y);
  }
}

class Child with Parent{
  int x = 200;
  static int y = 777;
  void printData(){
    print(super.x);
    super.printData();
  }
}

main(){
  Child().printData();
}

//o/p

// 100
// 200
// 999