class Test{
  int x = 10;
  Test();
  void getData(){
    print(x);
  }
}

class Test2 {
  int x = 20;
  Test2(){
    print("In test2 Cons..");
  }
}

class Child extends Test implements Test2{
  int x = 55;
  void getData(){
    print(super.x);
    super.getData();
  }
}

main(){
  Child obj = Child();
  obj.getData();
}

//o/p

// 10
// 55