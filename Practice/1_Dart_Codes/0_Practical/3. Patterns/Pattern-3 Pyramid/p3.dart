import "dart:io";

void main() {
  int row = 5;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      int x = i * j;
      stdout.write("$x ");
    }
    print(" ");
  }
}

// o/p

// 1  
// 2 4
// 3 6 9
// 4 8 12 16  
// 5 10 15 20 25