// 5
// 6 8
// 7 10 13
// 8 12 16 20
// 9 14 19 24 29

import "dart:io";

void main() {
  int row = 5;
  int sval = 5;
  for (int i = 1; i <= row; i++) {
    for (int j = 0; j < i; j++) {
      int val = i * j + sval;
      stdout.write("$val ");
      
    }
    sval++;
    print('');
  }
}
