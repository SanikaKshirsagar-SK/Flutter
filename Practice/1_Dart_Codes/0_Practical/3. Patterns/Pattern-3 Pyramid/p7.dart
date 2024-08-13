import "dart:io";
  
  
void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    int y = i * 2 - 1;
    for (int j = 1; j <= i; j++) {
      stdout.write("$y ");
      y += 2;
    }
    print(" ");
  }
}

// o/p

// 1  
// 3 5
// 5 7 9
// 7 9 11 13

