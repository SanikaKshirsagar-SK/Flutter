Function Outer(){   //var is not allowed as it is not return type and 
                    // Object is allowed till we don't call it or access it once we call the function it gives an error 
  void Inner(){
    print("Inner");
  } 
  return Inner; 
}

class Demo {
  void fun(){}
}
void main(){
  Function ret = Outer(); // var also allowed
  ret();    //Inner
  print(ret.runtimeType);  //() => void
  print(Outer.runtimeType); //() => Function
  Demo obj = new Demo();
  print(obj.runtimeType); //Demo
  print(obj.fun.runtimeType); //() => void
}
