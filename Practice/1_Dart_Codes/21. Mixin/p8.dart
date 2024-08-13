mixin class Demo1 {
  void m1() {
    print("in demo1-m1");
  }
}

class Demo with Demo1 {
  
}

void main() {
  Demo1 obj = new Demo1();
  obj.m1();
  
}
