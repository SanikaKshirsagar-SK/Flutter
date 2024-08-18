abstract class Demo1{
  void fun(); //if this class is not abstract.
              //Error: The non-abstract class 'Demo1' is missing implementations for these members: - Demo1.fun
}

class Demo2 implements Demo1 {
  void fun(){
    print("In fun");
  }
}

main(){
  Demo1 obj = Demo2();
  obj.fun();
}