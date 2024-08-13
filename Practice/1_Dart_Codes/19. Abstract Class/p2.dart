abstract class Demo {
  int x = 10;
  void m1() {
    print("m1");
    print(x);
  }

  void m2();
  void m3();
}

abstract class Demo1 extends Demo {
  void m4() {
    print("m4");
  }
  void m3() {
    print("m3");
  }
}

class Child extends Demo1 {
  void m2() {
    x = 20;
    print("m2");
    print(x);
  } 
}

void main() {
  Child obj = new Child();
  obj.m1();
  obj.m2();
  obj.m3();
  obj.m4();
}
