//       1 
//     2 4
//   3 6 9
// 4 8 12 16

import 'dart:io';

void main() {
  int row = 4;
  for (int i = 1; i <= row; i++) {
    for (int sp = 1; sp <= row - i; sp++) {
      stdout.write("  ");
    }
    for (int j = 1; j <= i; j++) {
      int res = i * j;
      stdout.write("$res ");
    }
    print('');
  }
}
