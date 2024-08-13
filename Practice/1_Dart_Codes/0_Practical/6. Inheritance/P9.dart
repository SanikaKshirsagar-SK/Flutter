class Test{
  int? x;
  static int y = 30;

  Test.initX(this.x);

  static void changeY(){
    y = 55;
  }
}

class Test1 extends Test{
  Test1(int x):super.initX(x);
}

main(){
  Test1 obj = Test1(40);
  Test.changeY();
  print(Test.y);
  print(obj.x);
}

//o/p

//55
//40