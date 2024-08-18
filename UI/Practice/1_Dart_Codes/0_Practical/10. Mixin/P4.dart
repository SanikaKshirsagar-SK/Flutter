mixin Test{
  int x = 20;
  void demo(){
    print("In Demo");
  }
  void fun2();
}

class Test2 with Test{
  void demo(){
    print("In demo Test2");
    super.demo();
  }
  void fun2(){
    print("In fun2");
  }
}

main(){
  Test2().demo();
  Test2().fun2();
}

//o/p

// In demo Test2
// In Demo
// In fun2