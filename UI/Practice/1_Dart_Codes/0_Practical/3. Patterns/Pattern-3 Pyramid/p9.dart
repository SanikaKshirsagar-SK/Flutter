// 1
// 3 5
// 5 8 11
// 7 11 15 19


///ygtfrdesawqwesrdtfgyhujik
///
import "dart:io";

void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    int val = i * 2 - 1;
    for (int j = 1; j <= i; j++) {
      stdout.write("$val ");
    
    }
    print(" ");
  }
}
