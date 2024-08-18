class Parent{
  int x;
  int y = 7;
  
  Parent(this.x);

  void getData(){
    print(x);
  }
}

class Child extends Parent{
  Child(int x, int y):super(y);

  int getData(){
    print(x);
    print(y);
    return 10;
  }
}

main(){
  Child obj = Child(40,50);
  obj.getData();
}

//o/p

// 50
// 7