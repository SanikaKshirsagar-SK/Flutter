//Synchronous program

void fun() {
  print("In fun");
}

void main() {
  print("Statement 1");
  print("Statement 2");
  print("Statement 3");

  fun();

  print("Statement 4");
  print("Statement 5");
  print("Statement 6");
}

//o/p

// Statement 1
// Statement 2
// Statement 3
// In fun     
// Statement 4
// Statement 5
// Statement 6
