class Demo1 {
  void m1() {
    print("in demo1-m1");
  }
}
mixin Demo2 on Demo1 {
  void m2() {
    print("in demo2-m2");
  }
}
// class Demo3 with Demo2 {
//   void m1() {
//     print("in demo1-m1");
//   }
// }
class Demo extends Demo1 with Demo2 {
  
}

void main() {
  Demo obj = new Demo();
  obj.m1();
  obj.m2();
  // Demo3 obj1 = new Demo3();
  // obj1.m1();
}
