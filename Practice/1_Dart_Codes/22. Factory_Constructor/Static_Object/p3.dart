class Demo {
  static Demo obj = new Demo();
  // Demo Demo(){                  //Error: Constructors can't have a return type.
  //   print("Constructor");
  //   return obj;           
  // }
  
}

void main() {
  Demo obj1 = new Demo();
  print(obj1.hashCode);
}
