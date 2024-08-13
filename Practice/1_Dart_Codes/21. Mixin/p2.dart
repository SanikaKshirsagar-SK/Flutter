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