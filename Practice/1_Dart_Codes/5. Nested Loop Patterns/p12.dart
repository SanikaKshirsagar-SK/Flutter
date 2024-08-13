import "dart:io";

void main() {
  for (int i = 1; i <= 3; i++) {
    for (int j = i; j <= i + 4; j += 2) {
      stdout.write("$j ");
    }
    print("");
  }
}

// o/p

// 1 3 5 
// 2 4 6
// 3 5 7