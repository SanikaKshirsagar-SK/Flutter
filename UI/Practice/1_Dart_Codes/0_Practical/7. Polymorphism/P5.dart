class Parent{
  int x = 10;
  
  Parent();

  void getData(){
    print(x);
  }
}

class Child extends Parent{
  double y = 10;
  static String str = "Sanika";
  Child();

  int getData(){
    print(y);
    return 10;
  }
}

main(){
  Child obj = Child();
  obj.getData();
}

//o/p

// 10.0