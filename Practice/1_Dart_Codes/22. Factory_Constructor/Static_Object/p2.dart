class Demo {
  static Demo obj = new Demo();
  Demo() {
    print("Constructor...");
  }
  Demo fun() {
    return obj;
  }
}

void main() {
  Demo obj1 = new Demo();
  print(obj1.hashCode);
}

// o/p
// Constructor...
// 359811651



// class Demo {
//   static Demo obj = new Demo();
//   Demo() {
//     print("Constructor...");
//   }
//   Demo fun() {
//     return obj;
//   }
// }

// void main() {
//   Demo obj1 = new Demo();
//   print(obj1.fun());
// }

// o/p
// Constructor...
// Constructor...
// Instance of 'Demo'