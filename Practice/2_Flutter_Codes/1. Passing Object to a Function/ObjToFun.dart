//Passing Object to a Function

class Demo{
  Demo(){
    print("In Demo Constructor");
  }
  void fun(){
    print("In Fun method");
  }
}
void objFun(Demo obj){
  print("In objFun Function");
  obj.fun();
}

void main(){
  // Demo obj = Demo();
  // objFun(obj);
  objFun(Demo());
}

//o/p

// In Demo Constructor
// In objFun Function
// In Fun method  