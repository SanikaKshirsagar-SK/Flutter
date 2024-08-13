class Demo{
  Demo(){
    print("Demo Constructor");
  }
  void fun(){
    print("In fun method");
  }
}
Demo objFun(){
  print("In objFun() function");
  // Demo obj = Demo();
  // return obj;
  return Demo();
}

void main(){
  Demo obj = objFun();
  obj.fun();
}

//o/p

// In objFun() function
// Demo Constructor
// In fun method