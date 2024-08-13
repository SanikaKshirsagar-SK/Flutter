// class Parent {
//   int? x;
//   String? str1;
//   Parent(this.x, this.str1);
//   void dispData() {
//     print(x);
//     print(str1);
//   }
// }

// class Child extends Parent {
//   int? y;
//   String? str2;
//   Child(this.y, this.str2);
//   void printData() {
//     print(y);
//     print(str2);
//   }
// }

// void main() {
//   Child obj = new Child(10, "Kanha");
// }

// // o/p
// // Error: The superclass, 'Parent', has no unnamed constructor that takes no arguments.
// //   Child(this.y, this.str2);


class Parent {
  int? x;
  String? str1;
  Parent();
  void dispData() {
    print(x);
    print(str1);
  }
}

class Child extends Parent {
  int? y;
  String? str2;
  Child(this.y, this.str2);
  void printData() {
    print(y);
    print(str2);
  }
}

void main() {
  Child obj = new Child(10, "Kanha");
  obj.dispData();
  obj.printData();
}

// o/p

// null
// null
// 10
// Kanha