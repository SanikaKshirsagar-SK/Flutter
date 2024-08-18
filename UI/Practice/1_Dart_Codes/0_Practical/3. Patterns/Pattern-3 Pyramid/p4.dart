import "dart:io";

void main() {
  int row = 4;
  int x = 10;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$x ");
      x--;
    }
    print(" ");
  }
}

// o/p

// 10  
// 9 8
// 7 6 5
// 4 3 2 1  