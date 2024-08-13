import "dart:io";

void main() {
  int row = 4;
  int sval = 5;
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < row; j++) {
      int val = sval + i + j;
      stdout.write("$val ");
    }
    print(" ");
  }
}

// o/p

// 5 6 7 8  
// 6 7 8 9
// 7 8 9 10
// 8 9 10 11