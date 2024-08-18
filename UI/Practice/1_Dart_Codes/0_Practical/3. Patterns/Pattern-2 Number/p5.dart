import "dart:io";

void main() {
  int row = 3;
  for (int i = 1; i <= row; i++) {
    int x = 4;
    for (int j = 1; j <= row; j++) {
      stdout.write("$x ");
      x++;
    }
    print(" ");
  }
}

// o/p

// 4 5 6  
// 4 5 6
// 4 5 6