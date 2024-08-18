import "dart:io";

void main() {
  int x = 1;
  for (int i = 1; i <= 4; i++) {
    for (int j = 1; j <= 4; j++) {
      stdout.write("$x ");
      x++;
    }
    print(" ");
  }
}

// o/p

// 1 2 3 4  
// 5 6 7 8
// 9 10 11 12
// 13 14 15 16
