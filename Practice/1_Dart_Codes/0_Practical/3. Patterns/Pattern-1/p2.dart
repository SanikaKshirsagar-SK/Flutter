import "dart:io";

void main() {
  for (int i = 1; i <= 4; i++) {
    int x = 4;
    for (int j = 1; j <= 4; j++) {
      stdout.write("$x ");
      x++;
    }
    print(" ");
  }
}

// o/p

// 4 5 6 7  
// 4 5 6 7
// 4 5 6 7
// 4 5 6 7  