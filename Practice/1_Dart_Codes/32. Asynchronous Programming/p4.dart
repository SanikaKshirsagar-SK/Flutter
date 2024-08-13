void fun1() {
  for (int i = 0; i < 10; i++) {
    print("In fun1");
  }
}

void fun2() {
  for (int i = 0; i < 10; i++) {
    print("In fun2 for 1");
  }
  Future.delayed(Duration(seconds: 5), () => print("delayed"));
  for (int i = 0; i < 10; i++) {
    print("In fun2 for 2");
  }
}

void main() {
  print("Start main");
  fun1();
  fun2();
  print("End main");
}
//o/p

// Start main
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// End main
// delayed


// void fun1() {
//   for (int i = 0; i < 10; i++) {
//     print("In fun1");
//   }
// }

// void fun2() {
//   for (int i = 0; i < 10; i++) {
//     print("In fun2 for 1");
//   }
//   for (int i = 0; i < 10; i++) {
//     print("In fun2 for 2");
//   }
// }

// void main() {
//   print("Start main");
//   fun1();
//   Future.delayed(Duration(seconds: 5), () => print("delayed"));
//   fun2();
//   print("End main");
// }

//o/p

// Start main
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun1      
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 1
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// In fun2 for 2
// End main
// delayed
