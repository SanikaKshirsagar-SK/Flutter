mixin class Parent{
  // Parent(){

  // } //Error: Can't use 'Parent' as a mixin because it has constructors.
  int x = 10;
  static int y = 133;

  void fun(){
      print(x);
      print(y);
  }
}
class Child extends Parent{
  int x = 38;

  void gun(){
    super.fun();
  }
}

main(){
  Child obj = Child();
  obj.gun();
}

//o/p

// 38
// 133