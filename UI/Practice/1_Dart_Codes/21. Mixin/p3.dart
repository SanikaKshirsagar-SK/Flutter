mixin Demo1 {
  void m1() {
    print("In Demo1-m1");
  }
}

class Demo2 {
  void m1() {
    print("In Demo2-m1");
  }
}

class Child extends Demo2 with Demo1 {}

void main() {
  Child obj = new Child();
  obj.m1();

  Demo2 obj1 = new Demo2();
  obj1.m1();
}
