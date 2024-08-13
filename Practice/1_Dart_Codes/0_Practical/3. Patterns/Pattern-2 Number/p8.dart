import "dart:io";

void main() {
  int row = 3;
  int x = 1;
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < row; j++) {
      stdout.write("$x ");
      x += 2;
    }
    print(" ");
  }
}

// o/p

// 1 3 5  
// 7 9 11
// 13 15 17