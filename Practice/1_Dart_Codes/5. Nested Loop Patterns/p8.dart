import "dart:io";

void main() {
  int no = 1;
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      stdout.write("$no ");
      no += 2;
    }
    print("");
  }
}

// o/p

// 1 3 5 
// 7 9 11
// 13 15 17