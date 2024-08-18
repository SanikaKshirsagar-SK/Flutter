mixin Demo2{
  void fun2(){
    print("In demo2 fun");
  }
}
mixin Demo on Demo2{
  void gun(){
    print("In demo gun");
  }
}

class Test3 with Demo2{
}
// class Test3 with Demo{
// }
//Error: The non-abstract class 'Test3' is missing implementations for these members: - Demo2.fun2   
//Error: 'Object' doesn't implement 'Demo2' so it can't be used with 'Demo'.

void main(){
  Test3 obj=new Test3();
  obj.fun2();
  // obj.gun(); // Error: The method 'gun' isn't defined for the class 'Test3'.
}

//o/p

// In demo2 fun