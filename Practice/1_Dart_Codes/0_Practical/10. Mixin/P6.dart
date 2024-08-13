class Test{
  Test(){
    print("In Test Cons");
  }
}
mixin Test1 on Test{
  void demo(){
    print("In Demo");
  }
}

class Test3 extends Test with Test1{
  Test3(){
    print("In test3");
  }
}

main(){
  Test3().demo();
}

//o/p

// In Test Cons
// In test3
// In Demo