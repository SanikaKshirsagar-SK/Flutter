import "dart:io";

void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$i ");
    }
    print(" ");
  }
}

// o/p

// 1  
// 2 2
// 3 3 3
// 4 4 4 4