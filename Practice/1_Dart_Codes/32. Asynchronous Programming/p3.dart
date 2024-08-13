
void main() {
  print("Statement 1");
  print("Statement 2");

  Future.delayed(Duration(seconds: 5), () => print("Statement 3"));

  print("Statement 4");
  print("Statement 5");
}

//o/p

// Statement 1
// Statement 2
// Statement 4
// Statement 5
// Statement 3


// String getName() {
//   return "Virat";
// }

// void main() {
//   print("Statement 1");
//   print("Statement 2");

//   Future.delayed(Duration(seconds: 5), () => print(getName()));

//   print("Statement 3");
//   print("Statement 4");
// }

//o/p

// Statement 1
// Statement 2
// Statement 3
// Statement 4
// Virat