import "dart:io";

void main() {
  for (int i = 1; i <= 4; i++) { 
    for (int j = 1; j <= 4; j++) {
      stdout.write("$i ");
    }
    print(" ");
  }
}

// o/p

// 1 1 1 1  
// 2 2 2 2
// 3 3 3 3
// 4 4 4 4
