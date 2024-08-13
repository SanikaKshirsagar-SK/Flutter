mixin Test1{
  int x = 20;
  void demo(){
    print("In Demo test1");
  }
}
mixin Test2{
  void demo(){
    print("In Demo test2");
  }
}
class Test3 with Test1,Test2{
  void demo(){
    print("In demo Test3");
    super.demo();
  }
  void fun2(){
    print("In fun2");
  }
}

main(){
  Test3().demo();
  Test3().fun2();
}

//o/p

// In demo Test3
// In Demo test2
// In fun2