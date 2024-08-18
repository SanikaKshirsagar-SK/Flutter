abstract class Test{
  int x;

  Test(this.x){
    print("In Test Cons");
  }
  void fun(){
    print("In fun");
  }

  void gun();
}

class Test2 extends Test{
  Test2(super.x);
  void gun(){
    print("In gun");
  }
}

main(){
  Test2 obj = new Test2(10);
  obj.fun();
  obj.gun();
}

//o/p

// In Test Cons
// In fun
// In gun