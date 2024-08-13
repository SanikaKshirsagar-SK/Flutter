mixin Demo1 {
  void m1() {
    print("in demo1-m1");
  }
}
mixin Demo2 on Demo1 {
  void m2() {
    print("in demo2-m2");
  }
}

// class Demo with Demo2 {
  
// }

void main() {
  // Demo obj = new Demo();
  // obj.m1();
  // obj.m2();
}
