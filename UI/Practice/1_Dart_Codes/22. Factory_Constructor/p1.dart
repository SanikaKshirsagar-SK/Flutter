class Demo {
  Demo._private() {
    print("Constructor");
  }
  factory Demo() {
    print("Factory Constructor");
    return Demo._private();
  }
}

// class Demo {
//   Demo._private() {
//     print("In Constructor");
//   }
//   factory Demo() {
//     return Demo._private();
//   }
//   void fun() {
//     print("in fun");
//   }
// }

// void main() {
//   Demo obj = new Demo();
//   print(obj.hashCode);
//   obj.fun();
// }
