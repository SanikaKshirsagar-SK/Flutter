//overloading not supported as we cannot have same named methods in same scope

// overrding

class Demo {
  int x = 10;
  void fun1() {
    print("In Demo");
    print(x);
  }
}

class DemoChild extends Demo {
  int x = 20;
  void fun1() {
    print("In DemChild");
    print(x);
  }
}

void main() {
  Demo obj1 = new Demo();
  obj1.fun1();

  DemoChild obj2 = new DemoChild();
  obj2.fun1();

  Demo obj3 = new DemoChild();
  obj3.fun1();
}
