abstract class Demo {
  int x = 10;
  void m1() {
    print("m1");
    print(x);
  }
  void m2();
  void m3();
}

class Child extends Demo {
  void m2() {
    x = 20;
    print("m2");
    print(x);
  }

  void m3() {
    print("m3");
  }
}

void main() {
  Demo obj = new Child();
  obj.m1();
  obj.m2();
  obj.m3();
}
