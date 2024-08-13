class Test{
  void fun(){
    print("In Test");
  }
  void gun(){    // if we create static method here
    print("In static Test");
  }
}

class Test2 extends Test{

  int fun(){
    print("In Test2");
    super.fun();
    return 10;
  }
  void gun(){
    print("In Test2 gun");
    super.gun();  // Error: Superclass has no method named 'gun'.  super.gun();
  }
}

main(){
  Test2 obj = Test2();
  obj.fun();
  obj.gun();
}

//o/p

// In Test2
// In Test
// In Test2 gun
// In static Test