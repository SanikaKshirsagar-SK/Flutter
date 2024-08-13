import "dart:io";

void main() {
  int row = 3;
  for (int i = 1; i <= row; i++) {
    for (int j = i; j <= i + (row+1); j += 2) {
      stdout.write("$j ");
    }
    print(" ");
  }
}

// o/p

// 1 3 5  
// 2 4 6
// 3 5 7 