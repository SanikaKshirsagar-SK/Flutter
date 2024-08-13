mixin Demo1 {
  void m1() {
    print("In Demo1-m1");
  }
  void m3();
}

abstract class Demo2 {
  void m2() {
    print("In Demo2-m2");
  }
  void m4();
}

class Child with Demo1 implements Demo2 {
  void m3() {
    print("in child-m3");
  }
  void m2() {
    print("in child-m3");
  }
  void m4() {
    print("in child-m4");
  }
  
}

void main() {
  Child obj = new Child();
  obj.m1();
  obj.m3();
  obj.m2();
  obj.m4();
}
