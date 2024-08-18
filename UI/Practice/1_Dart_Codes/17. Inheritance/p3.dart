// //call() method
// //super() keyword

// class Parent {
//   Parent() {
//     print("Parent Constructor");
//   }
//   call() {
//     print("call method");
//   }
// }

// class Child extends Parent {
//   Child() {
//     super();
//     print("Child Constructor");
//   }
// }

// void main() {
//   Child obj = new Child();
// }

// o/p
// Parent Constructor
// call method
// Child Constructor

class Parent {
  Parent() {
    print("Parent Constructor");
  }
  call() {
    print("call method");
  }
}

class Child extends Parent {
  Child() {
    super();
    print("Child Constructor");
  }
}

void main() {
  Child obj = new Child();
  obj();
}

// o/p
// Parent Constructor
// call method
// Child Constructor
// call method