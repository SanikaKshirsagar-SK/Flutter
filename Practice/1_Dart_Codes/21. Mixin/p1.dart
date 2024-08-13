// mixin Demo {
//   void f1() {
//     print("In Demo-f1");
//   }
// }
// void main() {
//   Demo obj = new Demo();
// }

// //o/p
// Error: Couldn't find constructor 'Demo'.
//   Demo obj = new Demo();
//                  ^^^^

// mixin Demo2 {
//   void f2() {
//     print("In Demo2-f2");
//   }
// }

// class DemoP with Demo2 {
//   void f3() {
//     print("In DemoP-f3");
//   }
// }

// void main() {
//   DemoP obj = new DemoP();
//   obj.f2();
//   obj.f3();
// }

// //o/p
// In Demo2-f2
// In DemoP-f3



// mixin Demo2 {
//   void f2() {
//     print("In Demo2-f2");
//   }

// }

// class Demo3 with Demo2 {
//   void f3() {
//     print("In Demo3-f3");
//   }
// }

// class DemoP extends Demo3 {
//   void f4() {
//     print("In DemoP-f4");
//   }
// }

// void main() {
//   DemoP obj = new DemoP();
//   obj.f2();
//   obj.f3();
//   obj.f4();

// }
// //o/p
// In Demo2-f2
// In Demo3-f3
// In DemoP-f4



mixin Demo2 {
  void f2() {
    print("In Demo2-f2");
  }

  void f5();
}

class Demo3 with Demo2 {
  void f3() {
    print("In Demo3-f3");
  }
  void f5() {
    print("In Demo3-f5");
  }
}

class DemoP with Demo2 {
  void f4() {
    print("In DemoP-f4");
  }
  void f5() {
    print("In DemoP-f5");
  }
}

void main() {
  DemoP obj = new DemoP();
  obj.f2();
  //obj.f3();
  obj.f4();
  obj.f5();
}
// //o/p
// In Demo2-f2
// In DemoP-f4
// In DemoP-f5