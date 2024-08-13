import "dart:io";

void main() {
  int row = 4;
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < row; j++) {
      int x = i * 3 + j + 1;
      stdout.write("$x ");
    }
    print(" ");
  }
}

// o/p

// 1 2 3 4  
// 4 5 6 7
// 7 8 9 10
// 10 11 12 13
