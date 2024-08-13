// class Parent {
//   int x = 10;
//   Parent() {
//     print("Parent Constructor");
//   }
//   void dispData() {
//     print(x);
//   }
// }

// class Child extends Parent {
//   int y = 20;
//   Child() {
//     print("Child Constructor");
//   }
//   void printData() {
//     print(x);
//     print(y);
//   }
// }

// void main() {
//   Child obj = new Child();
//   obj.dispData();
//   obj.printData();
// }

// o/p
// Parent Constructor
// Child Constructor
// 10
// 10
// 20

class Parent {
  int x = 10;
  Parent() {
    print("Parent Constructor");
    print(this.hashCode);
  }
  void dispData() {
    print(x);
  }
}

class Child extends Parent {
  int x = 20;
  Child() {
    print("Child Constructor");
    print(this.hashCode);
  }
  void printData() {
    print(x);
  }
}

void main() {
  Child obj = new Child();
  obj.dispData();
  obj.printData();
}

// o/p
// Parent Constructor
// 555493606
// Child Constructor
// 555493606
// 20
// 20
