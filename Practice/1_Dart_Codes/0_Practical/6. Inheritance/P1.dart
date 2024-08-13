       class Test{
  int x = 10;
  Test(this.x);
}

class Test2 extends Test{
  Test2(super.x);
}

main(){
  Test2 obj1 = Test2(100);
  print(obj1.x);  //100
  Test obj2 = Test(30);

  obj1.x = 19;
  
  print(obj1.x);  //19
  print(obj2.x);  //30
}

//o/p

// 10