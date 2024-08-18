import "dart:io";

void main() {
  for (int i = 1; i <= 4; i++) {
    for (int j = i; j <= i + 3; j++) {
      stdout.write("$j ");
    }

    print("");
  }
}

// o/p

// 1 2 3 4 
// 2 3 4 5
// 3 4 5 6 
// 4 5 6 7