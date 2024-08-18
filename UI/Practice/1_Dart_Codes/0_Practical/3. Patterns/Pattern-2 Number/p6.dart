import "dart:io";

void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= row; j++) {
      int x = i * j;
      stdout.write("$x ");
    }
    print(" ");
  }
}

// o/p

// 1 2 3 4  
// 2 4 6 8  
// 3 6 9 12
// 4 8 12 16